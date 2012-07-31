package siseventoscientificos

class Role {
    String nome

    static def hasMany = [ users : User ]
    static constraints = {
        nome(lenght:2..10,blank:false,unique:true)
    }
}
