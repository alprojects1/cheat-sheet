***Packages + Path***
```sh
1) wget https://download.jetbrains.com/python/pycharm-community-2024.x.x.tar.gz **check site**
2) cd/Downloads **or where you dl**
3) cd ~/Downloads
4) sudo tar -xzf pycharm-community-2024.2.1.tar.gz -C /opt/  **prefered location** 
5) sudo apt install openjdk-11-jdk
6) java -version
7) export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 
8) export PATH=$JAVA_HOME/bin:$PATH **Set JAVA_HOME:**
9) source ~/.bashrc **reload environment:*
10) /opt/pycharm/bin/pycharm.sh **symbolic link or desktop entry**
```

***Creating Desktop entry***
```sh
1) nano ~/.local/share/applications/pycharm.desktop
2) copy and paste below:
 [Desktop Entry]
 Version=1.0
 Type=Application
 Name=PyCharm
 Exec="/opt/pycharm-community-2024.2.1/bin/pycharm.sh" %f
 Icon=/opt/pycharm-community-2024.2.1/bin/pycharm.png
 Terminal=false
 Categories=Development;IDE;
 Comment=The Python IDE for Professional Developers
 NoDisplay=false
 StartupNotify=true
 StartupWMClass=jetbrains-pycharm
3) chmod +x ~/.local/share/applications/pycharm.desktop
4) update-desktop-database ~/.local/share/applications/
