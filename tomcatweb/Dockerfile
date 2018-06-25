# 使用centos作为基础镜像
FROM centos
# 复制本地jkd、tomcat到镜像目录
COPY ./jdk8 /usr/local/share/jdk8
COPY ./tomcat9 /usr/local/share/tomcat9
# 配置运行时环境变量
ENV JAVA_HOME /usr/local/share/jdk8
ENV PAHT $JAVA_HOME/bin:$PATH
# 声明端口
EXPOSE 8080
# 启动tomcat，同时使用tail-f是因为了避免 docker自动执行完shell后直接停止
ENTRYPOINT /usr/local/share/tomcat9/bin/startup.sh && tail -F /usr/local/share/tomcat9/logs/catalina.out