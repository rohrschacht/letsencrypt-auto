FROM ubuntu

RUN apt-get update -y && apt-get install -y git
RUN git clone https://github.com/letsencrypt/letsencrypt

WORKDIR /letsencrypt

RUN ./letsencrypt-auto --help

EXPOSE 80
EXPOSE 443

CMD ./letsencrypt-auto certonly --standalone -m $MAIL -d $DOMAINS
