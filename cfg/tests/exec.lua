location /exec {
    content_by_lua_block {
        local exec = require'resty.exec'
        local prog = exec.new('/tmp/exec.sock')

        prog.stdout = function(data)
            ngx.print(data)
            ngx.flush(true)
        end
        
        local res, err = prog('bash','-c','find /usr/local/lib')

        print(res.stdout)
                        
    }
}