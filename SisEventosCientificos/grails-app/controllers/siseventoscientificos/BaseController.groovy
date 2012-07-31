package siseventoscientificos

abstract class BaseController {

    def beforeInterceptor = [action:this.&auth,except:['login', 'handleLogin']]
    def auth(){
        if(!session.user){
            flash.forward = actionUri
            if(params.id){
                flash.forward += '/' + params.id
            }
            redirect(controller:'user',action:'login')
            return false
        }
    }
    def index = { }
}
