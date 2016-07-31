docker-rbenv
============

__Docker image with rbenv, ruby 1.8.7 and rails 2.3.8 installed on non-root account__

Based from a build by Cthulhu666 (props for one of the coolest names on github!)
https://github.com/cthulhu666/docker-rbenv

basic usage
-----

1 - Build base image (from this project):

		docker build -t tabashir/rbenv .

		(the name is important for the sub-project Dockerfile below)

2 - Copy 'Project_Dockerfile' to 'Dockerfile' in your rails project.

3 - Your app should be in a subfolder 'webapp' of your rails project.

4 - Build sub project

    docker build -t myapp .

5 - Run it

    docker run -d -P myapp foreman start 


Notes
-----

* remember to rbenv rehash installing executables if you install any new gems in project build
* remember to EXPOSE a port (default is 50080)
* currently using mongrel, I'm sure I should change this asap... 
