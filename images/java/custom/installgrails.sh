RUN curl -s get.gvmtool.net | bash
gvm install grails $GRAILS_VER
gvm default grails $GRAILS_VER
gvm use grails $GRAILS_VER
