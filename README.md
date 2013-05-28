Vagrant Silex Hello World
==================

Simple Vagrant Setup of a VM with Silex installed and running.
Based on the "Hello World" code of Makotokw (https://github.com/makotokw/php-silex-hello-world)

Requirements
------------------
- Vagrant V1.2.2 min (download and install from http://downloads.vagrantup.com/)
- Virtualbox V4.2.12 min (download and install from https://www.virtualbox.org/wiki/Downloads)

Add a standard box
-------------------
> vagrant box add precise64 http://files.vagrantup.com/precise64.box

Get the repository
-------------------
> git clone git@github.com:jgrossiord/vagrant-silex-hello-world.git

Start the VM
-------------------
> cd vagrant-silex-hello-world
> vagrant up

Go in browser to http://localhost:8080/hello/Julien

Other commands (see Vagrant doc)
--------------------
To suspend the VM
> vagrant suspend

To destroy the VM
> vagrant destroy