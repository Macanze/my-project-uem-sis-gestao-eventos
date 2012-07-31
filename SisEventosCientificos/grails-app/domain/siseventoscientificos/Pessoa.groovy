package siseventoscientificos

class Pessoa {
    String nome
    String cpf
    String endereco
    String telefoneFixo
    String telefoneCelular
    String email

    static constraints = {
        nome(length:3..100, blank:false)
        email(email:true)
    }
}
