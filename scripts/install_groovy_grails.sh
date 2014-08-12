

GROOVY_VER=2.3.6
GRAILS_VER=2.4.3

curl -s get.gvmtool.net | bash

gvm install groovy $GROOVY_VER
gvm default groovy $GROOVY_VER
gvm use groovy $GROOVY_VER

gvm install grails $GRAILS_VER
gvm default grails $GRAILS_VER
gvm use grails $GRAILS_VER
