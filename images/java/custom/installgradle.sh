RUN curl -s get.gvmtool.net | bash
gvm install gradle $GROOVY_VER
gvm default gradle $GRADLE_VER
gvm use gradle $GRADLE_VER
