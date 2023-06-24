# Using the latest version of ubuntu
FROM ubuntu:latest 

ENV DEBIAN_FRONTEND=noninteractive

# updating system to use 32 bit architecture
RUN dpkg --add-architecture i386
# updating packages list
RUN apt-get update
# upgrading with new packages and default answer to 'yes'
RUN apt-get -y upgrade

# installing packages
RUN apt-get install -y flex bison build-essential csh openjdk-19-jre-headless libxaw7-dev libc6:i386

# creating a directory for the project
WORKDIR /usr/class/cool
# This line copies the contents of the current directory (where the Dockerfile resides) into the /usr/class/cool directory inside the Docker image.
COPY --chown=root:root . .

# Writing path in .bashrc
RUN echo "export PATH=/usr/class/cool/bin:$PATH" >> ~/.bashrc

# Compiling the project
# RUN make install 

# Cleaning up
RUN apt-get autoremove && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

# Entry point
ENTRYPOINT [ "/bin/bash" ]