# DVWA Vagrant Box

Damn Vulnerable Web Application is an intentionally exploitable web app used to
learn about web app security. It's a lot of fun, but installing it on your own
computer is asking for trouble. This repository uses
[Vagrant](https://www.vagrantup.com/) and
[VirtualBox](https://www.virtualbox.org/) to safely and easily install DVWA.

To run (you must have Vagrant and VirtualBox installed; follow the instructions
[here](http://squidarth.github.io/Devfest-Environment-Setup/)):

    vagrant up

Then, go to <http://localhost:8080/DVWA-1.0.8/setup.php> and click "Create/Reset
Database."

Go to <http://localhost:8080/DVWA-1.0.8/> and login with the credentials
`admin:password`. Then go for it! There are lots of DVWA resources out there,
but try on your own first :)
