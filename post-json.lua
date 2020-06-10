wrk.method = "POST" 
wrk.body = [[
    {
        "module": "Authentication",
        "target": "Login",
        "data": {
            "isSocial": false,
            "account": {
                "username": "${username}",
                "password": "${password}"
            }
        },
       "json":"{        \"isSocial\": false,     \"account\": {        \"username\": \"xxx\",      \"password\": \"xxx\"     }   }"
    }
]]
wrk.headers["Content-Type"] = "application/json" 