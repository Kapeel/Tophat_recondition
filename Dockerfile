# Tophat_recondtion 
# 

FROM      ubuntu:14.04.3 
MAINTAINER Kapeel Chougule

LABEL Description="This image is used for running Tophat_recondition python script used to recondition unmapped bam files from tophat output, to be used in further downstreeam analysis steps "
RUN apt-get update && apt-get install -y build-essential zlib1g-dev wget python-pip python-dev
RUN pip install pysam

RUN git clone https://github.com/cbrueffer/tophat-recondition.git \
&& cp tophat-recondition/tophat-recondition.py /usr/bin/

ENTRYPOINT ["tophat-recondition.py ","-h"]
