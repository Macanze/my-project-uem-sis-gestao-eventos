<html>
    <head>
        <title>Sis-Eventos</title>
        <meta name="layout" content="main" />
        <style type="text/css" media="screen">

        #nav {
            margin-top:20px;
            margin-left:30px;
            width:228px;
            float:left;

        }
        .homePagePanel * {
            margin:0px;
        }
        .homePagePanel .panelBody ul {
            list-style-type:none;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody h1 {
            text-transform:uppercase;
            font-size:1.1em;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody {
            background: url(images/leftnav_midstretch.png) repeat-y top;
            margin:0px;
            padding:15px;
        }
        .homePagePanel .panelBtm {
            background: url(images/leftnav_btm.png) no-repeat top;
            height:20px;
            margin:0px;
        }

        .homePagePanel .panelTop {
            background: url(images/leftnav_top.png) no-repeat top;
            height:11px;
            margin:0px;
        }
        h2 {
            margin-top:15px;
            margin-bottom:15px;
            font-size:1.2em;
        }
        #pageBody {
            margin-left:280px;
            margin-right:20px;
        }
        .logon {
            background: url(images/leftnav_top.png) no-repeat top;
            height:11px;
            margin:0px;
            font-size:1.8em;
        }
        </style>
    </head>
    
</div>
    <body>
      <div id="header">
  <p><g:link class="header-main" controller="pessoa">Usuários</g:link></p>
  <p class="header-sub">little</p>
  <div id="loginHeader">
    <g:loginControl />
  </div>
        <div id="nav">
           <div class="homePagePanel">
              <div class="panelTop"></div>
                <div class="panelBody">
                    <h1>Status</h1>
                    <ul>
                        
                    </ul>
                    <h1>Lista de Eventos</h1>
                    <ul>
                        <g:set var="pluginManager"
                               value="${applicationContext.getBean('pluginManager')}"></g:set>

                        <g:each var="plugin" in="${pluginManager.allPlugins}">
                            
                        </g:each>

                    </ul>
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>
        <div id="pageBody">
            <h1>SisEvent </h1>
            <p>Sistema de gerenciamento de eventos</p>

            <div id="controllerList" class="dialog">
                <h1>Cadastros:</h1>
                <ul>
               <!--     <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                    </g:each>
               -->
                  <h1><li class="controller" ><g:link controller ="pessoa" action="list">Pessoas</g:link></li>
                  <li class="controller" ><g:link controller ="user"   action="list">Usuário</g:link></li>
                  <li class="controller" ><g:link controller ="role"   action="list">Regras Usuario</g:link></li></h1>
                </ul>
            </div>
        </div>
    </body>
</html>
