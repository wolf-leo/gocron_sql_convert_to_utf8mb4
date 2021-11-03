#!/bin/bash

HOSTNAME="127.0.0.1"  		#数据库地址
PORT="3306"			#数据库端口
USERNAME="root"  		#数据库帐号
PASSWORD="password"		#数据库密码
DBNAME="gocron"  		#数据库名称

sql="
ALTER TABLE host CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci; 
ALTER TABLE login_log CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE setting CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE task CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE task_host CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE task_log CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE user CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
"

echo ${sql}

mysql -h${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD} ${DBNAME} -e "${sql}"
