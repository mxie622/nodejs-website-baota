#!/bin/bash

echo "  >>---------- start installing ----------"

cd /www/wwwroot/xiexuan/nodejs/

echo "  >>---------- start mysql ---------- "

mysql -u root -p "
drop database if exists node_cms;
create database node_cms;
use node_cms;
source /www/wwwroot/xiexuan/nodejs/doc/install.sql"

echo "  >>---------- mysql finished----------"

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

echo "  >>---------- installing finished ----------"
