#!/bin/bash
# cheneydc <cheneydc@gmail.com>
# 2017.08.07

#cd /mistral &&  { 
#    git pull
#    git branch | grep "$MISTRAL_BRANCH" > /dev/null
#    if [ $? != 0 ];then
#        echo "Checkout branch $MISTRAL_BRANCH"
#        git checkout --track origin/$MISTRAL_BRANCH
#    fi
#
#    git checkout $MISTRAL_BRANCH
#    pip install -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
#    pip install -r requirements.txt 
#    pip install pymysql
#    pip install -U pyOpenSSL
#    python setup.py install
#}

set -e
exec /usr/bin/python /usr/local/bin/mistral-server --server $SERVICE_NAME --config-file /etc/mistral/mistral.conf --log-file /var/log/mistral/$SERVICE_NAME.log

