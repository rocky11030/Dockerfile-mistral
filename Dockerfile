FROM ubuntu:14.04
MAINTAINER cheneydc <cheneydc@gmail.com>

ENV DEBIAN_FROMTEND noninteractive
ENV MISTRAL_BRANCH master

COPY sources.list /etc/apt/sources.list

RUN apt-get update -y && apt-get install -y gcc \
                                            git \
                                            python-setuptools \
                                            python-dev \
                                            libxml2-dev \
                                            libxslt-dev \
                                            libffi-dev \
                                            libpq-dev \
                                            python-openssl \
                                            libmysqlclient-dev \
                                            python-pip && pip install -U pip && mv /usr/lib/python2.7/dist-packages/pip /usr/lib/python2.7/dist-packages/pip-1.5.4 && cp -r /usr/local/lib/python2.7/dist-packages/pip /usr/lib/python2.7/dist-packages/ && git clone https://github.com/rocky11030/mistral.git  && cd /mistral && pip install -r requirements.txt -i http://10.6.2.184/pypi/simple --trusted-host 10.6.2.184 && pip install -r requirements.txt && pip install pymysql && pip install -U pyOpenSSL && python setup.py install

#RUN git clone http://10.20.0.196/kernel/mistral.git

ADD ./service.sh /service.sh

VOLUME ["/etc/mistral", "/var/log/mistral", "/var/lib/mistral"]
CMD ["/service.sh"]
