# ami
assignment3 repo for csye6225

1.to build ami, use buildAmi.sh.


2. create an instance by this ami


3.ssh to connect to the instance:

ssh -i {location of the RSA key-pair} ubuntu@{public ip for the instance}


4.install the mysql database:

systemctl status mysql.service

sudo mysql -uroot -p

ALTER USER 'root'@'localhost' IDENTIFIED BY '{password}';

FLUSH PRIVILEGES;

create database webapp;


5.scp the jar file to execute

scp -i {location of the RSA key-pair} {location of the jar file} ubuntu@35.175.242.10:{target location of the jarfile}

sudo java -jar webapp-0.0.1-SNAPSHOT.jar --server.port=8081


6.run this jar file with customized database settings

sudo java -jar webapp-0.0.1-SNAPSHOT.jar --server.port=8081 --spring.config.location=${spring-config-path}
