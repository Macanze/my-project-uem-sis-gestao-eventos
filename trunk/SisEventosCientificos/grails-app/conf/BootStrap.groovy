import siseventoscientificos.User
import siseventoscientificos.User
class BootStrap {

    def init = { servletContext ->
        def jdoe = new User(login:"em", senha:"123456", nome:"EME")
        jdoe.save()
        def jsmith = new User(login:"jsmith", senha:"wordpass", nome:"Jane Smith")
        jsmith.save()              
      
    }
  
    def destroy = {
    }
}
