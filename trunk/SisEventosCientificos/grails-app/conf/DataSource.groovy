
dataSource {
    pooled = true
    driverClassName = "org.apache.derby.jdbc.ClientDriver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:derby://localhost:1527/teste"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:derby://localhost:1527/teste"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:derby://localhost:1527/teste;shutdown=true"
        }
    }
}
