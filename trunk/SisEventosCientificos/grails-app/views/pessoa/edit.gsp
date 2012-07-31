

<%@ page import="siseventoscientificos.Pessoa" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${pessoaInstance}">
            <div class="errors">
                <g:renderErrors bean="${pessoaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${pessoaInstance?.id}" />
                <g:hiddenField name="version" value="${pessoaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nome"><g:message code="pessoa.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pessoaInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${pessoaInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="email"><g:message code="pessoa.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pessoaInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${pessoaInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cpf"><g:message code="pessoa.cpf.label" default="Cpf" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pessoaInstance, field: 'cpf', 'errors')}">
                                    <g:textField name="cpf" value="${pessoaInstance?.cpf}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endereco"><g:message code="pessoa.endereco.label" default="Endereco" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pessoaInstance, field: 'endereco', 'errors')}">
                                    <g:textField name="endereco" value="${pessoaInstance?.endereco}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telefoneCelular"><g:message code="pessoa.telefoneCelular.label" default="Telefone Celular" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pessoaInstance, field: 'telefoneCelular', 'errors')}">
                                    <g:textField name="telefoneCelular" value="${pessoaInstance?.telefoneCelular}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telefoneFixo"><g:message code="pessoa.telefoneFixo.label" default="Telefone Fixo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pessoaInstance, field: 'telefoneFixo', 'errors')}">
                                    <g:textField name="telefoneFixo" value="${pessoaInstance?.telefoneFixo}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
