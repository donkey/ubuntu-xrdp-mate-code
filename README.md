## ubuntu-xrdp-mate-code
Docker Ubuntu 16.04 with XRDP and MATE add IDE VS Code
### Proof of Concept: Build Docker Container IDE on X11 remote desktop
The purpose to exploring and deploy container build process in virtual IDE use over RDP

#### RUN
`docker run -d --name rdp2mate -p 3389:3389 -p 2222:22 -v /home:/home -dit --restart unless-stopped donkeyshark/ubuntu-xrdp-mate-code:matecode3`

The command allows to connect via ssh port 22 and rdp port 3389 to docker container `docker-machine ip` using X11 with IDE Visual Basic Code. Shered folder path `home` to use for persistent data.
