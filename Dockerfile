FROM ubuntu

LABEL MAINTAINER Clave

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# hent liste over tilgjengelige biblioteker & versjoner
RUN apt-get update

# installer nodejs og npm (-y svarer yes på installasjonsspm, -q for quiet)
RUN apt-get install nodejs npm -yq

# vi ønsker å kjøre kommandoen `node`, ikke `nodejs`
RUN ln -s /usr/bin/nodejs /usr/bin/node

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
