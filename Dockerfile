FROM python:3.7.4-alpine3.9 
RUN apk update && apk add wget git gcc musl-dev python3-dev libffi-dev openssl-dev vim
RUN git clone https://github.com/sudarshan-narayanan-we45/OAuth_Vuln.git
WORKDIR /OAuth_Vuln
RUN pip install -r requirements.txt
# RUN /bin/sh start_app.sh
ENTRYPOINT ["/bin/sh"]
CMD ["start_app.sh]

#####Command to run the Vulnerable OAuth Flask App
#Sudarshans-MacBook-Air:OAuth_Lab sudarshannarayanan$ docker run -it --link db_mongo:db_mongo -p 5000:5000 -p 5001:5001 -p 5002:5002 oauth_vuln_app /bin/sh


####Command to run the mongodb container
#docker run -it --name db_mongo -p 27017:27017 mongo
#After killing the mongo container, run the docker container prune command to remove any existing files pertaining to db_mongo container
