

URL=http://localhost:8080/auth/refresh


TOKEN=$(cat token_received.txt)
RESPONSE=$(curl -H 'Accept: application/json' -H "Authorization: Bearer ${TOKEN}" $URL)

echo $RESPONSE>token_received.txt
echo $RESPONSE
