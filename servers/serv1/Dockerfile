FROM openjdk:8

ARG SERV_USER
ARG SERV_USER_ID
ARG SERV_GROUP
ARG SERV_GROUP_ID
ENV SERV_USER ${SERV_USER}
RUN groupadd -g $SERV_GROUP_ID $SERV_GROUP
RUN useradd -m -u $SERV_USER_ID -g $SERV_GROUP -d /home/$SERV_USER $SERV_USER 
WORKDIR /home/$SERV_USER
RUN mkdir batch
ADD file-spring-batch-0.0.1.jar batch
RUN mkdir files
RUN mkdir logs
RUN chown -R $SERV_USER:$SERV_GROUP /home/$SERV_USER
USER $SERV_USER
CMD ["/bin/bash","-c","java -jar /home/$SERV_USER/batch/file-spring-batch-0.0.1.jar &>files/out.txt"]
#CMD ["/bin/bash","-c","java -version &> files/out.txt"]
#ENTRYPOINT ["java","-jar","/home/runuser/batch/file-spring-batch-0.0.1.jar"]

