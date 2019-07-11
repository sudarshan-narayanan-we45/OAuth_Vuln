#!/bin/sh
echo -e 'Starting the Vulnerable API Server on port 5002\n';
python API_server/API_server.py &
#sleep 3;
echo -e 'Starting the OAuth Server on port 5001 \n';
python auth_server/AC_auth_server.py &
#sleep 3;
echo -e 'Starting the Client Application on port 5000 \n';
python client/AC_client.py 
#sleep 3;
#exit;
