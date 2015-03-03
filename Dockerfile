FROM resin/rpi-node:0.10.22

COPY . /app

RUN cd /app/coder-base && \
    npm install
RUN cd /app/coder-apps && \
    ./install_common.sh ../coder-base

WORKDIR /app/coder-base
CMD ["node", "server.js"]
