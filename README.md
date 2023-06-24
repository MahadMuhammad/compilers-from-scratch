# Compilers From Scratch
The best way to learn something is to understand how it works internally. The best way to learn in depth about these compilers`(dragons)` is to implement them from scratch.




# Running Locally:
1. One of the way to install this locally is using the virtualbox image. I am using ubuntu 22.04. You can download virtual box according to your operating system from virtualbox [website](https://www.virtualbox.org/wiki/Downloads).

    - After installing virtualbox you can download the iso image from [here](https://drive.google.com/file/d/193-Tmx-DSR3dPhTstEWwWGdhji_HGqE6/view)

2. Second way is to use docker. You can install docker from [here](https://docs.docker.com/engine/install/). After installing docker you can run the following command to download and run the docker image.
```bash
docker pull mahadmuhammad/compilers-from-scratch:latest
```
- After downloading docker images you can run the following command to run the docker image in your present working directory.
```bash
docker run -it --rm -v $(pwd):/usr/class/cool --name compilers-from-scratch mahadmuhammad/compilers-from-scratch
```
