FROM ubuntu:latest

ENV USERNAME=abc
ENV PASSWORD=123
ENV TZ=Asia/Shanghai

# USTC mirror
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y locales expect git python3 python3-pip
# Set the locale
RUN locale-gen zh_CN.UTF-8  
ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8

COPY upload.sh /
COPY config.sh /
RUN chmod u+x /upload.sh
RUN chmod u+x /config.sh
WORKDIR /app
RUN git clone --depth=1 https://github.com/Aruelius/cloud189.git \ 
&& cd cloud189 \
&& pip3 install -r ./requirements.txt \
&& chmod u+x ./main.py

VOLUME /records
ENTRYPOINT ["/upload.sh"]