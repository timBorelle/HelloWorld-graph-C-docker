# Alpine Linux image which contains C compiler (GCC package)
# FROM frolvlad/alpine-gcc
FROM alpine:latest

RUN mkdir /app
WORKDIR /app
COPY . .

RUN apk add --no-cache wget musl-dev gcc sudo make libx11-dev libxpm-dev

# Get graphic lib and set it up
RUN wget http://www.iut-fbleau.fr/sitebp/doc/doc_bib_graphique/bibliotheque-graphique-iut-1.1.tar.gz \
    && tar -xvf bibliotheque-graphique-iut-1.1.tar.gz \
    && cd bibliotheque-graphique-iut-1.1/ \ 
    && ./configure \
            --prefix=/usr \
            --disable-exemples \
    && sudo make \
    && sudo make install \
    && cd ../ \ 
    && rm bibliotheque-graphique-iut-1.1.tar.gz 

# Compile the application
RUN gcc -o hello_world hello_world.c -lgraph

# Run the application
CMD ./hello_world

