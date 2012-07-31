

<%@ page import="siseventoscientificos.User" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
            <g:hasErrors bean="${userInstance}">
            <div class="errors">
                <g:renderErrors bean="${userInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${userInstance?.id}" />
                <g:hiddenField name="version" value="${userInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nome"><g:message code="user.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${userInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="email"><g:message code="user.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${userInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="login"><g:message code="user.login.label" default="Login" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'login', 'errors')}">
                                    <g:textField name="login" value="${userInstance?.login}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="senha"><g:message code="user.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'senha', 'errors')}">
                                    <g:textField name="senha" value="${userInstance?.senha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ativo"><g:message code="user.ativo.label" default="Ativo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'ativo', 'errors')}">
                                    <g:checkBox name="ativo" value="${userInstance?.ativo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cpf"><g:message code="user.cpf.label" default="Cpf" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'cpf', 'errors')}">
                                    <g:textField name="cpf" value="${userInstance?.cpf}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endereco"><g:message code="user.endereco.label" default="Endereco" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'endereco', 'errors')}">
                                    <g:textField name="endereco" value="${userInstance?.endereco}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="roles"><g:message code="user.roles.label" default="Roles" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'roles', 'errors')}">
                                    
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telefoneCelular"><g:message code="user.telefoneCelular.label" default="Telefone Celular" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'telefoneCelular', 'errors')}">
                                    <g:textField name="telefoneCelular" value="${userInstance?.telefoneCelular}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telefoneFixo"><g:message code="user.telefoneFixo.label" default="Telefone Fixo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'telefoneFixo', 'errors')}">
                                    <g:textField name="telefoneFixo" value="${userInstance?.telefoneFixo}" />
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
