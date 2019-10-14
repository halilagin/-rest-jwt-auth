

rm -f token_received.txt  userinfo_received.txt

URL=http://localhost:8080/api/authenticate

#
RESPONSE=$(curl -s -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' --data '{"username":"admin","password":"admin", "rememberMe":true}' $URL | jq -r '.id_token')

echo $RESPONSE 
echo $RESPONSE > token_received.txt
