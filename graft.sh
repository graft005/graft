apt update && apt install wget curl git -y
git init
git pull https://github.com/Bendr0id/xmrigCC
apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

cmake .
make -j$(nproc)
./xmrigDaemon -o graft.pool-pay.com:4434 -a rx/graft -o GMPHYf5KRkcAyik7Jw9oHRfJtUdw2Kj5f4VTFJ25AaFVYxofetir8Cnh7S76Q854oMXzwaguL8p5KEz1tm3rn1SA6nmtZ2dH8ehN576wr7 -t $(nproc)
