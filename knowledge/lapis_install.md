

# on osx
```
brew install luarocks
luarocks --lua-dir=/usr/local/opt/lua@5.1 install luaossl OPENSSL_DIR=/usr/local/opt/openssl CRYPTO_DIR=/usr/local/opt/openssl
luarocks --lua-dir=/usr/local/opt/lua@5.1 install lapis
luarocks --lua-dir=/usr/local/opt/lua@5.1 install moonscript
luarocks --lua-dir=/usr/local/opt/lua@5.1 install lapis-console

```


env.sh

```
export PATH=$PWD/lua:$PATH
export LUA_PATH="?;?.lua;$PWD/lua/lib/?/init.lua;$PWD/lua/lib/?.lua;$PWD/lua/lib/?/?.lua"
export LUA_CPATH="$PWD/lua/?.so;./?.so"


```


# on ubuntu

```
apt install luarocks
apt install openresty-openssl-dev
luarocks install luaossl OPENSSL_DIR=/usr/local/openresty/openssl CRYPTO_DIR=/usr/local/openresty/openssl
```