FROM ubuntu
MAINTAINER Mike Haag <MHaggis>

# dependencies
RUN apt-get update -y
RUN apt-get install -y \
  libgssapi-krb5-2 \
  wget \
  dpkg \
  nano \
  python-dev \
  python-pip \
  git \
&& rm -rf /var/lib/apt/lists/*


WORKDIR /opt/


#Download repo and install cbapi
RUN git clone https://github.com/carbonblack/cbapi-python.git
RUN git clone https://github.com/MHaggis/cb-response-surveyor.git
RUN git clone https://github.com/carbonblack/community.git
RUN git clone https://github.com/carbonblack/cb-reporting.git
RUN pip install cbapi
RUN cd cb-reporting
RUN pip install -r requirements.txt
RUN cd /opt

#Create credential store
RUN mkdir /etc/carbonblack
ADD credentials.response /etc/carbonblack/

