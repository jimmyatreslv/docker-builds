FROM tsl0922/ttyd

RUN curl -sL https://github.com/kong/deck/releases/download/v1.12.3/deck_1.12.3_linux_amd64.tar.gz -o deck.tar.gz
RUN tar -xf deck.tar.gz -C /tmp
RUN cp /tmp/deck /usr/local/bin/

RUN apt update && apt install -y jq