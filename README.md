# Docker Development Environment for Carbon Black API

**Information**

You will need Docker in order to properly utilize this simple build environment, please download here: `http://www.docker.com/products/docker#/mac`

**Setup**

Simply fill in the credentials.response (for Carbon Black Response) with the proper information related to your CbR environment. 

Execute the following to build the container:

`docker build -t carbonblack/cbapi .`

Confirm completion:

`docker images`

Attach to the new image:

`docker run -t -i carbonblack/cbapi /bin/bash`

**Environment**

Working directory: `/opt/`

All repositories drop into `/opt/`

To add new repositories to the environment before building, modify Dockerfile by adding:

`RUN git clone <new repo URL>`

To add new repositories after build, attach to container and run:

`git clone <repo URL>`

