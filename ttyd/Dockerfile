FROM tsl0922/ttyd

RUN apt update && apt install -y jq curl

RUN curl -sL https://github.com/kong/deck/releases/download/v1.12.3/deck_1.12.3_linux_amd64.tar.gz -o deck.tar.gz

RUN tar -xf deck.tar.gz -C /tmp

RUN cp /tmp/deck /usr/local/bin/

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -

RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null

RUN echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt update && apt install yarn nodejs httpie git vim bash-completion

RUN yarn global add jsonwebtokencli insomnia-inso

RUN curl -o /usr/local/bin/kubectl -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

RUN chmod +x /usr/local/bin/kubectl

COPY scripts /root/scripts
