

JAVA_VER=8u11
JAVA_DIR=jdk1.8.0_11

cd /usr/local

wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/$JAVA_VER-b12/jdk-$JAVA_VER-linux-x64.tar.gz && \
    tar xfvz jdk-$JAVA_VER-linux-x64.tar.gz && \
    ln -s $JAVA_DIR jdk && \
    rm -f jdk-$JAVA_VER-linux-x64.tar.gz

cat << EOF >> ~/.bashrc

# jdk
export JAVA_HOME=/usr/local/jdk
export PATH=\$PATH:\$JAVA_HOME/bin
EOF
