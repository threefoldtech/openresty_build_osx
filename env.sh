set -x
if [[ -z "${DIRSB}" ]]; then
  export DIRSB=$PWD
fi

export PATH=/usr/local/opt/openssl/bin:$HOME/opt/bin:$HOME/opt/go_proj/bin:$HOME/opt/go/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
export PATH=$DIRSB/lua:$PWD/bin:$PWD/openresty/bin:$PATH
export LUA_PATH="?;?.lua;$PWD/lib/lua/?/init.lua;$PWD/lib/lua/?.lua;$PWD/lib/lua/?/?.lua;$PWD/lib/lua/?/core.lua"
export LUA_CPATH="$PWD/lua/?.so;./?.so"
export ORHOME=$PWD
export LAPIS_OPENRESTY=$PWD/openresty/bin/openresty

