# parent Docker
FROM biocontainers/proteowizard:latest # may add versioning later

# adding some basics (check if they are already there)
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install unzip

# adding mono
RUN apt-get install -y mono-complete

# MASIC
RUN wget -P /app https://github.com/PNNL-Comp-Mass-Spec/MASIC/releases/download/v3.0.7097/MASIC_Console_Program.zip
RUN cd /app && unzip MASIC_Console_Program.zip

