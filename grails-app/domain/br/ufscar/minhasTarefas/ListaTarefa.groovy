package br.ufscar.minhasTarefas

class ListaTarefa {

    String nome
    Boolean ativa = true
    Boolean preferida = false

    static hasMany = ['tarefas': Tarefa]

    static constraints = {
        nome()
        ativa()
        preferida()
    }
}
