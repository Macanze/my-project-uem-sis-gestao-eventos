import siseventoscientificos.User
import grails.util.GrailsUtil
import siseventoscientificos.Pessoa
class BootStrap {

    def init = { servletContext ->
        
      /*  switch(GrailsUtil.environment){
      case "development":
        def admin = new User(id:1,
                                version:0,
                                cpf:"teste",
                                email:"teste2",
                                endereco:"test3",
                                nome:"Administrador",
                                telefone_celular:"634434",
                                telefone_fixo:"tes123123",
                                login:"admin",
                                senha:"admin"
                                )
        admin.save()
                
      break

      case "production":
        def admin = new User(login:"admin",
                           senha:"senha",
                          name:"Administrator")
        admin.save()

        
      break
    }
    */
       }
  
    def destroy = {
    }
}
