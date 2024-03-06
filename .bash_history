cd .ssh/
nano authorized_keys 
sudo su
sudo apt-get update && sudo apt-get install default-jdk -y
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
sudo apt-get -y install postgresql postgresql-contrib
[200~sudo su - postgres~
sudo su - postgres
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.6.0.39681.zip
sudo apt-get -y install unzip
sudo unzip sonarqube*.zip -d /opt
sudo mv /opt/sonarqube-8.6.0.39681 /opt/sonarqube -v
sudo groupadd sonarGroup
sudo useradd -c "user to run SonarQube" -d /opt/sonarqube -g sonarGroup sonar 
sudo chown sonar:sonarGroup /opt/sonarqube -R
sudo useradd -c "user to run SonarQube" -d /opt/sonarqube -g sonarGroup sonar
username=sonar
sonar.jdbc.username=sonar
sonar.jdbc.username=sonar
sudo nano /opt/sonarqube/conf/sonar.properties
sudo vi /opt/sonarqube/bin/linux-x86-64/sonar.sh
sudo vi /etc/systemd/system/sonar.service
sudo vi /etc/sysctl.conf
sudo vi /etc/security/limits.conf
sudo sysctl -p
sudo systemctl start sonar
sudo systemctl enable sonar
sudo systemctl status sonar
tail -f /opt/sonarqube/logs/sonar*.log
sudo nano /opt/sonarqube/conf/sonar.properties
sudo /opt/sonarqube/bin/linux-x86-64/sonar.sh restart
tail -f /opt/sonarqube/logs/sonar*.log
cd RestClient.java:255
cat /opt/sonarqube/logs/
cd /opt/sonarqube/logs/
ls
nano sonar-20240306.log
cd ..
top
top -h
top -hv
free -h
