# parent Docker
FROM biocontainers/proteowizard:latest # may add versioning later

# adding some basics (check if they are already there)
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install unzip

# adding Java
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
# RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
# ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y openjdk-7-jre && apt-get clean

# adding mono
RUN apt-get install -y mono-complete

# MASIC
RUN wget -P /app https://github.com/PNNL-Comp-Mass-Spec/MASIC/releases/download/v3.0.7097/MASIC_Console_Program.zip
RUN cd /app && unzip MASIC_Console_Program.zip

