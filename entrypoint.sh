cd /v2raybin
echo -e "$CONFIG_JSON" > config.json
if [ "$CERT_PEM" != "$KEY_PEM" ]; then
  echo -e "$CERT_PEM" > cert.pem
  echo -e "$KEY_PEM"  > key.pem
fi
#./v2ray
cd /ssjs/osjs
node server.js -b 0.0.0.0
