RUN curl -s get.gvmtool.net | bash
gvm install groovy $GROOVY_VER
gvm default groovy $GROOVY_VER
gvm use groovy $GROOVY_VER

