docker-rbenv
============

__Docker image with rbenv, ruby 1.8.7 and rails 2.3.8 installed on non-root account__

Based from a build by Cthulhu666 (props for one of the coolest names on github!)
https://github.com/cthulhu666/docker-rbenv

basic usage
-----

    docker run -i -t <imagename>
    $ ruby -v
    ruby 2.2.0p0 (2014-12-25 revision 49005) [x86_64-linux]
     
Notes
-----

remember to rbenv rehash installing executables
remember to EXPOSE a port

    
build it:

    docker build -t myapp .

run your app:

    docker run -d -P myapp foreman start 


