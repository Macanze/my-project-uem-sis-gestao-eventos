package siseventoscientificos
import siseventoscientificos.Role

class User extends Pessoa {
    static withTable = "app_user"
    String login
    String senha
    Boolean ativo = true

    static def hasMany = [ roles : Role ]
    static def belongsTo = Role
    static constraints = {
        login(unique:true)
        senha(blank:false)
    }
}
