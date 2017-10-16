Dockerfile说明
========

* 基于ubuntu_14.04.5的镜像
* 设置环境变量，相当于变量赋值
* 拷贝源
* 安装各个软件包
* pip install -U pip 为升级pip，由于ubuntu系统的问题，pip的路径有问题升级不到9.0.1; 使用以下命令可以解决:mv /usr/lib/python2.7/dist-packages/pip /usr/lib/python2.7/dist-packages/pip-1.5.4 && cp -r /usr/local/lib/python2.7/dist-packages/pip /usr/lib/python2.7/dist-packages/
* 拷贝mistral的安装脚本
* 进入mistral目录，通过本地源安装requirements.txt的pip包
* 通过python setup.py 安装mistral
* 复制service.sh脚本到根目录
* 创建3个挂载点/etc/mistral /var/log/mistral /var/lib/mistral
* 容器执行/server.sh脚本
