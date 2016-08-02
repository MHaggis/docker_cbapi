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
RUN pip install cbapi

#Create credential store
RUN mkdir /etc/carbonblack
ADD credentials.response /etc/carbonblack/
