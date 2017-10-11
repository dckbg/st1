cd /go/bin
if [ "$CERT_PEM" != "$KEY_PEM" ]; then
  echo -e "$CERT_PEM" > cert.pem
  echo -e "$KEY_PEM"  > key.pem
fi
./gost -L ws://:8080 -L http2://:8088 -L tls://:8089

