sed -i  's/sparkworks_client.Configuration()/sparkworks_client.Configuration("username", "password", "client_id", "client_secret")/' *.md
sed -i  "s/configuration.access_token = 'YOUR_ACCESS_TOKEN'/configuration.connect()/" *.md


