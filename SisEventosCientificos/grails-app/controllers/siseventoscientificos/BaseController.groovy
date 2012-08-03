package siseventoscientificos




abstract class BaseController {
    def beforeInterceptor = [action:this.&authenticate,except:['login', 'handleLogin']]

    def authenticate() {
        if(!session.user) {
            flash.forward = actionUri
            if(params.login){
                flash.forward += '/' + params.login
            }
            redirect(controller:'user',action:'login')
            return false
        }
    }
    def logout = {
    flash.message = "Goodbye ${session.user.name}"
    session.user = null
    redirect(controller:"user", action:"list")
  }
   
}
