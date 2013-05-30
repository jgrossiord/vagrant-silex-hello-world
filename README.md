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
```bash
vagrant box add precise64 http://files.vagrantup.com/precise64.box
```
Get the repository
-------------------
```bash
git clone git@github.com:jgrossiord/vagrant-silex-hello-world.git
```
Start the VM
-------------------
```bash
cd vagrant-silex-hello-world
vagrant up
```
See logs/web/urls.txt to get the URL of your application

Other commands (see Vagrant doc)
--------------------
To suspend the VM
```bash
vagrant suspend
```
To destroy the VM
```bash
vagrant destroy
```