First of all, for the convinience to build the DockerFile
 
 >docker build .

Confirm your creating images.

>docker images

and the write down the IMAGE ID using forward.

Make mount point entire setting for jenkins.
>mkdir jenkins_home

Change permission easily access for jenkins user inside the docker container.

>chmod 777 jenkins_home

Replace *IMAGE ID* for that mention the above.

 >docker run -p 8080:8080 -p 50000:50000 -v $(pwd)/jenkins_home/:/var/jenkins_home *IMAGE ID*
