FROM python:3.7.4-alpine3.9 
RUN apk update && apk add wget git gcc musl-dev python3-dev libffi-dev openssl-dev
RUN git clone https://github.com/sudarshan-narayanan-we45/OAuth_Vuln.git
WORKDIR /OAuth_Vuln
RUN pip install -r requirements.txt
#CMD /bin/sh