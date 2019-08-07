FROM golang


#RUN apt-get update && apt-get install dos2unix -y 
# COPY startup.sh /root/startup.sh
# COPY gopa.yml /go/gopa/bin/gopa.yml
COPY . /go/src/gopa
WORKDIR /go/src/gopa

# grab all needed packages
RUN go get ./...

EXPOSE 9000

#ENTRYPOINT [ "/root/startup.sh" ]