# Docker Development Environment for Carbon Black API

**Information**
You will need Docker in order to properly utilize this simple build environment, please download here: `http://www.docker.com/products/docker#/mac`

**Setup**

Simply fill in the credentials.response (for Carbon Black Response) with the proper information related to your CbR environment. 
Once complete, execute:

`docker build -t carbonblack/cbapi .`

Once finished, attach to the new image:

`docker run -t -i carbonblack/cbapi /bin/bash`
