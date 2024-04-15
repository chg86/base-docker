FROM openjdk:8-jre-slim
RUN apt update && apt upgrade && apt autoremove -y
RUN apt install -y curl wget
RUN wget -q https://repo1.maven.org/maven2/org/bouncycastle/bcprov-jdk16/1.46/bcprov-jdk16-1.46.jar -O $JAVA_HOME/lib/ext/bcprov-jdk16-1.46.jar
RUN ln -sf $JAVA_HOME /usr/local/jre

# ============= 自定义环境 ================
# RUN whatever you want
RUN apt install -y git python-pip docker
