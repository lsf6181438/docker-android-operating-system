FROM ubuntu:16.04

### for RPC's environment
#RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list


RUN apt -y update
RUN apt -y install git make wget g++ gcc python openjdk-8-jdk unzip bc bison build-essential ccache curl dos2unix flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev 

# for static code check
RUN apt -y install cppcheck 

# for Airtest
RUN apt -y install python3

# for OTA upgrade
RUN apt -y install adb

# for dev
RUN apt -y install tree vim
