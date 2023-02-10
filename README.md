# Server Container Configs
All my server's podman configuration files reside in this repo. 


### About


These `yaml` files are for all the services I use on my homeserver, using Podman. They can be run using `podman-compose`, `docker-compose` or whatever engine you use. 
However, there are some flags that I've added to make rootless podman work on my homeserver. This may not be needed with the docker engine. 

There are also some containers (PiHole) that needs to run as root either due to port privilege or trying to access the docker socket. Change any of these as you see fit.

I've obviously removed any sensitive information in these files with `****`. I've been meaning to transition to fully using secrets, but haven't had the time to do so. 

I'll keep this repo updated with any significant changes I make to my setup. 
