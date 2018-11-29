from registry.cn-qingdao.aliyuncs.com/dc_ecs/jdk8 
VOLUME /tmp

ADD target/linked-in-learning-full-stack-app-angular-spring-boot-0.0.1.jar  app.jar

RUN sh -c 'touch /app.jar'

ENV JAVA_OPTS=""

ENTRYPOINT ["sh","-c","java $JAVA_OPTS - Djava.security.egd=file:/dev/./urandom -jar /app.jar"]
