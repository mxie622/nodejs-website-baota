#!/bin/bash

echo "  >>---------- 开始安装 ----------"

# cd /Users/mikexie/

# rm -rf nodejs
# mkdir nodejs
cd /www/wwwroot/xiexuan/nodejs/

echo "  >>---------- 开始执行mysql ---------- 无pw 直接回车 "

mysql -u root -p "
drop database if exists node_cms;
create database node_cms;
use node_cms;
source /www/wwwroot/xiexuan/nodejs/doc/install.sql"

echo "  >>---------- 执行mysql结束 ----------"

: routes/jdbc.js w! "
var mysql = require('mysql');
var pool = mysql.createPool({
    host: '127.0.0.1',
    port: '3306',
    user: 'root',
    password: '',
    database: 'node_cms'
});
exports.pool=pool;"

chmod 777 start.sh
./start.sh

echo "  >>---------- 安装结束 ----------"
