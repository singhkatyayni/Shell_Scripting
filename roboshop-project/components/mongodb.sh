#1. Setup MongoDB repos.
#
#```bash
#curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo
#```
#
#1. Install Mongo & Start Service.
#
#```bash
## yum install -y mongodb-org
## systemctl enable mongod
## systemctl start mongod
#
#```
#
#1. Update Listen IP address from 127.0.0.1 to 0.0.0.0 in config file
#
#Config file: `/etc/mongod.conf`
#
#then restart the service
#
#```bash
## systemctl restart mongod
#
#```
#
### Every Database needs the schema to be loaded for the application to work.
#
#Download the schema and load it.
#
#```
## curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip"
#
## cd /tmp
## unzip mongodb.zip
## cd mongodb-main
## mongo < catalogue.js
## mongo < users.js
#
#```
#
#Symbol `<` will take the input from a file and give that input to the command.



source components/common.sh

echo "Download mongodb repo file"
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo


echo "Install mongodb"
yum install -y mongodb-org &>>$LOG_FILE

echo "Update mongodb config file"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf &>>$LOG_FILE

echo "Start Database"
systemctl enable mongodb &>>$LOG_FILE
systemctl start mongodb &>>$LOG_FILE

echo "Download Schema"
curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip" &>>$LOG_FILE

echo "extract schema"
cd /tmp/
unzip -o mongodb.zip &>>$LOG_FILE

echo "Load Schema"
cd mongodb-main
mongo < catalogue.js &>>$LOG_FILE
mongo < users.js &>>LOG_FILE
