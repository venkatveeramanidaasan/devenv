if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi
if [ -z "$1" ]
  then
    echo "Pass the expected JDK folder name"
    exit 1
fi

JAVA_DIR=$1
sudo apt-get purge openjdk-\*
sudo mkdir -p /usr/local/java
cd ~/Downloads
sudo cp -r jdk*.tar.gz /usr/local/java
cd /usr/local/java
sudo tar xvzf jdk*.tar.gz
echo "JAVA_HOME=/usr/local/java/$JAVA_DIR" | sudo tee -a /etc/profile
echo 'PATH=$PATH:$JAVA_HOME/bin:' | sudo tee -a /etc/profile
echo 'export JAVA_HOME' | sudo tee -a /etc/profile
echo 'export PATH' | sudo tee -a /etc/profile
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/$JAVA_DIR/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/$JAVA_DIR/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/$JAVA_DIR/bin/javaws" 1
sudo update-alternatives --set "java" "/usr/local/java/$JAVA_DIR/bin/java"
sudo update-alternatives --set "javac" "/usr/local/java/$JAVA_DIR/bin/javac"
sudo update-alternatives --set "javaws" "/usr/local/java/$JAVA_DIR/bin/javaws"
. /etc/profile
java -version
