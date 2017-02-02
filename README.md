# development environment for catcha

this uses a vagrant instance to run grails while you can edit catcha project in
the shared directory with host machine.

## how-to

    # install vagrant and virtualbox on host machine
    $> brew install vagrant virtualbox

    # clone this repo on host machine
    $> git clone git@github.com:nmaekawa/catcha-vagrant

    # clone catcha and dependencies on host machine
    $> cd catcha-vagrant
    $> git clone git@github.com:annotationsatharvard/catcha

    $> mkdir annotationframework
    $> cd annotationframework
    $> git clone git@github.com:annotationframework/AfPersistence
    $> git clone git@github.com:annotationframework/AfSecurity
    $> git clone git@github.com:annotationframework/AfShared

    # run vagrant up
    $> cd ..
    $> vagrant up

    # ssh into vagrant instance
    $> vagrant ssh

    # run grails run-app in vagrant instance
    vagrant $> cd /vagrant/catcha
    vagrant $> cp Catch-config.properties catch-config.properties
    vagrant $> grails run-app

    # access catcha instance at http://10.10.10.10:8080 or
      http://localhost:8080


- [homebrew][http://brew.sh "homebrew"]
- [vagrant][https://www.vagrantup.com "vagrant"]
- [virtualbox][https://www.virtualbox.org/wiki/Downloads "virtualbox"]
- [catcha][https://github.com/annotationsatharvard/catcha "catcha"]
- [annotationframework][https://github.com/annotationframework "catcha dependencies"]

