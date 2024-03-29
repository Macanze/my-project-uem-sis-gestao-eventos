
<%@ page import="siseventoscientificos.Pessoa" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'pessoa.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'pessoa.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="email" title="${message(code: 'pessoa.email.label', default: 'Email')}" />
                        
                            <g:sortableColumn property="cpf" title="${message(code: 'pessoa.cpf.label', default: 'Cpf')}" />
                        
                            <g:sortableColumn property="endereco" title="${message(code: 'pessoa.endereco.label', default: 'Endereco')}" />
                        
                            <g:sortableColumn property="telefoneCelular" title="${message(code: 'pessoa.telefoneCelular.label', default: 'Telefone Celular')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${pessoaInstanceList}" status="i" var="pessoaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${pessoaInstance.id}">${fieldValue(bean: pessoaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: pessoaInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: pessoaInstance, field: "email")}</td>
                        
                            <td>${fieldValue(bean: pessoaInstance, field: "cpf")}</td>
                        
                            <td>${fieldValue(bean: pessoaInstance, field: "endereco")}</td>
                        
                            <td>${fieldValue(bean: pessoaInstance, field: "telefoneCelular")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${pessoaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
