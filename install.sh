if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "INSTALL openresty on OSX"
else
    echo "ONLY OSX SUPPORTED"
    exit 1
fi

rm -f /usr/local/opt/openresty
rm -f /usr/local/opt/openresty-openssl
rm -rf /usr/local/etc/openresty


rm -f /usr/local/bin/openresty
rm -f /usr/local/bin/dvtm
rm -f /usr/local/bin/dvtm-status
rm -f /usr/local/bin/jsrun
rm -f /usr/local/bin/md2pod.pl
rm -f /usr/local/bin/nginx-xml2pod
rm -f /usr/local/bin/openresty
rm -f /usr/local/bin/opm
rm -f /usr/local/bin/resty
rm -f /usr/local/bin/restydoc
rm -f /usr/local/bin/restydoc-index
rm -f /usr/local/bin/sockproc
rm -f /usr/local/bin/sockexec

ln -s $PWD/openresty /usr/local/opt/openresty
ln -s $PWD/openresty-openssl /usr/local/opt/openresty-openssl
ln -s $PWD/cfg /usr/local/etc/openresty

ln -s $PWD/openresty/bin/* /usr/local/bin

