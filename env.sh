

export PATH=/usr/local/opt/openssl/bin:$HOME/opt/bin:$HOME/opt/go_proj/bin:$HOME/opt/go/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
export PATH=$PWD/lua:$PWD/openresty/bin:$PATH
export LUA_PATH="?;?.lua;$PWD/lua/lib/?/init.lua;$PWD/lua/lib/?.lua;$PWD/lua/lib/?/?.lua;$PWD/lua/lib/?/core.lua"
export LUA_CPATH="$PWD/lua/?.so;./?.so"
export ORHOME=$PWD
export LAPIS_OPENRESTY=$PWD/openresty/bin/openresty

