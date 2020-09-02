FROM ubuntu:latest

# USTC mirror
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y locales
# Set the locale
RUN locale-gen zh_CN.UTF-8  
ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8
# Install Python
RUN apt-get install -y git python3 python3-pip

COPY upload.sh /
RUN chmod u+x /upload.sh
WORKDIR /app
RUN git clone --depth=1 https://github.com/Aruelius/cloud189.git \ 
&& cd cloud189 \
&& pip3 install -r ./requirements.txt \
&& chmod u+x ./main.py

VOLUME /records
ENTRYPOINT ["/upload.sh"]