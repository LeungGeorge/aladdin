# pp 使用指南
## 安装步骤
1.自定义命令  
  注意使用当前shell，查看当前shell (echo $SHELL)
 
```
alias pp="/bin/zsh /home/work/github/pp/pp"
```
2.添加crontab任务

```
30 * * * * cd /home/work/github/pp && sh run.sh >> run.log
0 * * * * cd  /home/work/github/pp && sh splitLog.sh >> splitLog.log
```


## 使用帮助
### 常用命令
自动更新，部署当前目录下所有项目
运行 pp 可查看提示

```
=== pp(@baidu,by liangyuanzheng)  ===
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>begin:
# 自动化更新工具 #
接口人: liangyuanzheng (有问题找ta)
  用法:
        <普通命令 for common>
        pp [help]                       打印我
        pp pullmaster                   切换到master分支并更新
        pp pullcur                      更新当前分支
        pp status                       更新当前分支状态
        pp deploy                       部署当前分支到otp机器（具体查看模块fis配置）
update time = 2017-12-21 13:22:15

```

### 日志分片crontab任务

```
30 * * * * cd /home/work/github/pp && sh run.sh >> run.log
0 * * * * cd  /home/work/github/pp && sh splitLog.sh >> splitLog.log
```
