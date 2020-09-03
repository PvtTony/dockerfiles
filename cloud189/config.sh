#!/usr/bin/expect
spawn /app/cloud189/main.py
expect {
    "continue anyway? (y/N)" {send "y\r"}
}
expect "输入用户名:"
send "$env(USERNAME)\r"
expect "输入密码:"
send "$env(PASSWORD)\r"
expect "全部文件 >"
send "exit\r"
expect eof