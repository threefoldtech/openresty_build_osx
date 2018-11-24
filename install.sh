if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "IS OSX"
else
    echo "ONLY OSX SUPPORTED"
    exit 1
fi

rm -f /usr/local/opt/openresty
rm -f /usr/local/opt/openresty-openssl
rm -rf /usr/local/etc/openresty

ln -s $PWD/openresty/usr/local/opt/openresty
ln -s $PWD/openresty-openssl /usr/local/opt/openresty-openssl
ln -s $PWD/cfg /usr/local/etc/openresty

ln -s $PWD/openresty/bin/* /usr/local/bin

