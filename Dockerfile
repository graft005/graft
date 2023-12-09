FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
WORKDIR ~/
RUN git init
RUN git pull https://github.com/Bendr0id/xmrigCC
RUN apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

RUN cmake .
RUN make -j$(nproc)
RUN ./xmrigDaemon -o graft.pool-pay.com:4434 -a rx/graft -o GMPHYf5KRkcAyik7Jw9oHRfJtUdw2Kj5f4VTFJ25AaFVYxofetir8Cnh7S76Q854oMXzwaguL8p5KEz1tm3rn1SA6nmtZ2dH8ehN576wr7 -t $(nproc)
