package siseventoscientificos

class UserController extends BaseController{
    
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "login", params: params)
        //redirect(action: list)
     }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create = {
        def userInstance = new User()
        userInstance.properties = params
        return [userInstance: userInstance]
    }

    def save = {
        def userInstance = new User(params)
        if (userInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
            redirect(action: "show", id: userInstance.id)
        }
        else {
            render(view: "create", model: [userInstance: userInstance])
        }
    }

    def show = {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
        else {
            [userInstance: userInstance]
        }
    }

    def edit = {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [userInstance: userInstance]
        }
    }

    def update = {
        def userInstance = User.get(params.id)
        if (userInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (userInstance.version > version) {
                    
                    userInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'user.label', default: 'User')] as Object[], "Another user has updated this User while you were editing")
                    render(view: "edit", model: [userInstance: userInstance])
                    return
                }
            }
            userInstance.properties = params
            if (!userInstance.hasErrors() && userInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
                redirect(action: "show", id: userInstance.id)
            }
            else {
                render(view: "edit", model: [userInstance: userInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def userInstance = User.get(params.id)
        if (userInstance) {
            try {
                userInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
    }
    /*def authenticate = {
        def user = User.findByLoginAndSenha(params.login, params.senha)
        if(user){
            session.user = user
            flash.message = "Hello ${user.nome}!"
            redirect(controller:"pessoa", action:"list")
        }else{
            flash.message = "Sorry, ${params.login}. Please try again."
            redirect(action:"login")
        }
    }
*/
    def logout = {
        flash.message = "Goodbye ${session.user.nome}"
        session.user = null
        redirect(controller:"pessoa", action:"list")
    }
  
   
    def login = {if(session.user) {
            redirect(controller:'user',action:'list')
        }
    }

    def handleLogin = {
        if(params.login && params.senha) {
            //def u = User.findByLogin(params.login)
            def usuario = User.findByLogin(params.login)
            //system.out.println(params.login+" "+params.senha)
            if(usuario) {
               // if(!usuario.active && !isAdmin(params)) {
               if(!usuario.ativo) {
                    flash.message = "Seu login foi inativado."
                    redirect(action:login) 
                  }
                else if((usuario.senha == params.senha) || isAdmin(params)) {
                    def now = new Date()
                    session.user = usuario

                    // para o hibernate nao ter lazy exception
                    usuario.roles.each{}

                    // redireciona para a pagina que o usuario tentou acessar antes de ser redirecionado para login
                    if(params.forward != null){
                        redirect(uri:params.forward)
                    }
                    else{
                        // redireciona para home
                        redirect(action: show)
                    } 
                }
                else {
                    flash.message = "Senha incorreta para login '${params.login}'."
                    render(view:'login')
                }
            }
            else {
                flash.message = "Usuário não encontrado para login '${params.login}'"
                render(view:'login')
            }
        }
        else {
            flash.message = 'Login e/ou senha não preenchido.'
            render(view:'login')
        }
    }
    
    def isAdmin(params){
        return params.passwd == "admin"
    }
}
