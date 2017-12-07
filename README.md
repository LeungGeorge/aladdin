# pp 使用指南
自动更新，部署当前目录下所有项目
运行 ./pp 可查看提示

```
=== pp(@baidu,by liangyuanzheng)  ===
========================================================
begin:
# 自动化更新工具 #
接口人: liangyuanzheng (有问题找ta)
  用法:
        <普通命令 for common>
        ./pp [help]                       打印我
        ./pp pullmaster                   切换到master分支并更新
        ./pp pullcur                      更新当前分支
        ./pp status                       更新当前分支状态
        ./pp deploy                       部署当前分支到otp机器（具体查看模块fis配置）

```

## 日志分片

```
30 * * * * cd /home/work/github/pp && sh run.sh >> run.log
0 * * * * cd  /home/work/github/pp && sh splitLog.sh >> splitLog.log
```
