

GRADLE_VER=2.0

curl -s get.gvmtool.net | bash

gvm install gradle $GRADLE_VER
gvm default gradle $GRADLE_VER
gvm use gradle $GRADLE_VER
