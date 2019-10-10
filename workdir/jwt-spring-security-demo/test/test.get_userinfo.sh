

URL=http://localhost:8080/api/user


TOKEN=$(cat token_received.txt)
RESPONSE=$(curl -H 'Accept: application/json' -H "Authorization: Bearer ${TOKEN}" $URL)

echo $RESPONSE>userinfo_received.txt
echo $RESPONSE
