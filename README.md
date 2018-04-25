# aladdin 使用指南
## 安装步骤
1.自定义命令  
  注意使用当前shell，查看当前shell (echo $SHELL)，后面aladdin的路径修改为你自己的路径
 
```
alias aladdin="/bin/zsh /home/work/github/aladdin/aladdin"
```
2.添加crontab任务

```
30 * * * * cd /home/work/github/pp && sh run.sh >> run.log
0 * * * * cd  /home/work/github/pp && sh splitLog.sh >> splitLog.log
```


## 使用帮助
### 常用命令
自动更新，部署当前目录下所有项目
运行 aladdin 可查看提示


```
=== aladdin(@baidu,by leunggeorge)  ===
|   ^ ^                   Hi, leunggeorge
|    o    .:[I]:_       Welcome use aladdin     ,:[I]:.
|       .: :[C]: :-.     _= made by lyz =_   ,-: :[C]: :.
|     .: : :[O]: : :`._                  ,.\': : :[O]: : :.
| _..: : : :[D]: : : : : :-._________.-: : : : : :[D]: : : :-._
| ^^^^^^^^^^[E]^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[E]^^^^^^^^^^
|           [|]                                   [|]
|   ~~^-_~^~|||~~^_~^~_~^-~_^~-^~_^~~-^~_~^~-^~_^~|||~^-~_~^--
|
progress:[>>>>>>>>>>>>>>>>>>>>>                             ]100%
# 自动化更新工具 #
接口人: leunggeorge (有问题找ta)
  用法:
        <普通命令 for common>
        aladdin [help]                       打印我
        aladdin pullmaster                   切换到master分支并更新
        aladdin pullcur                      更新当前分支
        aladdin push                         push当前分支
        aladdin preview [blog|doraemon]      预览当前目录的blog（hexo blog；doraemon周刊）
        aladdin publish [blog|doraemon]      发布当前目录的blog（hexo blog；doraemon周刊）
        aladdin status                       更新当前分支状态
        aladdin deploy [dev]                 部署当前分支到otp机器（具体查看模块fis配置）
update time = xxxx-xx-xx xx:xx:xx
```

### 日志分片crontab任务

```
30 * * * * cd /home/work/github/aladdin/ && sh run.sh >> run.log
0 * * * * cd  /home/work/github/aladdin/ && sh splitLog.sh >> splitLog.log
```
