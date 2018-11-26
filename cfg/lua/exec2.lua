location /exec2 {
    content_by_lua_block {
        local exec = require'resty.exec'
        local prog = exec.new('/tmp/exec.sock')
        local res, err = prog('uname')
        ngx.print(res.stdout)

        
        local exec_socket = require'resty.exec.socket'

        -- you can specify timeout in milliseconds, optional
        local client = exec_socket:new({ timeout = 60000 })

        -- every new program instance requires a new
        -- call to connect
        local ok, err = client:connect('/tmp/exec.sock')


        -- send program arguments, only accepts a table of
        -- arguments
        client:send_args({'cat'})

        -- send data for stdin
        client:send('hello there')

        -- receive data
        local data, typ, err = client:receive()

        -- 'typ' can be one of:
        --    'stdout'   - data from the programs stdout
        --    'stderr'   - data from the programs stderr
        --    'exitcode' - the programs exit code
        --    'termsig'  - if terminated via signal, what signal was used

        -- if 'err' is set, data and typ will be nil
        -- common 'err' values are 'closed' and 'timeout'

        print(string.format('Received %s data: %s',typ,data))

        -- will print 'Received stdout data: hello there'

        client:send('hey this cat process is still running')
        data, typ, err = client:receive()
        print(string.format('Received %s data: %s',typ,data))
        -- will print 'Received stdout data: hey this cat process is still running'

        client:send_close()
        
        data, typ, err = client:receive()
        print(string.format('Received %s data: %s',typ,data))
        
        -- will print 'Received exitcode data: 0'

        data, typ, err = client:receive()
        print(err)      
                        
    }
}