package br.ufscar.minhasTarefas

class Tarefa {

    String nome

    static belongsTo = ['lista': ListaTarefa]

    static constraints = {
    }
}
