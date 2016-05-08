<!DOCTYPE html>
<html xmlns:g="http://www.w3.org/1999/html">
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-tarefa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-tarefa" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:form>
                <g:select id="filtro-lista" name="idLista" from="${listasDisponiveis}"
                          optionKey="id" optionValue="nome"
                          noSelection="['':'Selecione uma lista']"
                          value="${filtroLista}"/>
                <g:select id="filtro-concluidas" name="concluidas" from="${
                [
                        ['value': 'Abertas', key: false],
                        ['value': 'Concluídas', key: true]
                ]
                }"
                          optionKey="key" optionValue="value" value="${filtroConcluidas}"
                noSelection="['':'Todas']"/>
                <g:submitButton id="filtrar" name="filtrar" value="Filtrar"/>
            </g:form>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${tarefaList}" />

            <div class="pagination">
                <g:paginate total="${tarefaCount ?: 0}" />
            </div>
        </div>
    </body>
</html>