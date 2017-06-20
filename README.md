# Docker

## bygge
`docker build -t hello-image .`

## starte
* Sørg for at nettverket `hello-world-network` eksisterer
  - `docker network create hello-world-network`
* Sørg for at docker-demo-world er kjørt opp med navnet `world-container` på `hello-world-network`
* `docker run -dit --net=hello-world-network -p 80:3000 --name hello-container hello-image`
