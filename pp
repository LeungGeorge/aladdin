#!/bin/bash
#
pp_company="baidu"
pp_authore="liangyuanzheng"

##################################################################
# 代码由此开始 

# 打印用法
usage()
{
    pp_begin
    echo_green "# 自动化更新工具 #"
    cat << END
接口人: $pp_authore (有问题找ta)
  用法:
        <普通命令 for common>
        ./pp [help]                       打印我
        ./pp pullmaster                   切换到master分支并更新
        ./pp pullcur                      更新当前分支
        ./pp status                       更新当前分支状态
        ./pp deploy                       部署当前分支到otp机器（具体查看模块fis配置）
END
    exit
}

# yes or no print
echo_ok()
{
    if [ $1 -eq 0 ];then
        echo -e "\033[32;1m$2\033[0m"
    else
        echo -e "\033[31;1m$3\033[0m"
        exit 1
    fi
}
# 红色打印
echo_red()
{
    while [ "$1" != "" ];do
        echo -e "\033[31;1m$1\033[0m"
        shift
    done
}
# 绿色打印
echo_green()
{
    while [ "$1" != "" ];do
        echo -e "\033[32;1m$1\033[0m"
        shift
    done
}
# 粉色打印
echo_purple()
{
    echo -e "\033[35;1m$1\033[0m"
}

# pp 开始
pp_begin(){
    echo_green ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>begin:"
}

# pp 结束
pp_end(){
    echo_green "end!"
}

# pp 本地目录代码更新
pp_pullmaster(){
    for dir in $(ls $(pwd));do
        if [ -d $dir ];then
            pp_begin

            echo_green $(pwd)/$dir
            cd $dir
            git checkout master
            git pull
            git status
            echo_ok 0 "update success!"
            cd ../
            echo_green $(pwd)
            pp_end
        fi
    done
}

# pp 本地目录代码更新
pp_pullcur(){
    for dir in $(ls $(pwd));do
        if [ -d $dir ];then
            pp_begin

            echo_green $(pwd)/$dir
            cd $dir
            git status
            git pull
            git status
            echo_ok 0 "update success!"
            cd ../
            echo_green $(pwd)
            pp_end
        fi
    done
}

pp_deploy(){
    echo_red $2
    for dir in $(ls $(pwd));do
        if [ -d $dir ];then
            pp_begin

            echo_green $(pwd)/$dir
            cd $dir
            fis3 release $2
            echo_ok 0 "update success!"
            cd ../
            echo_green $(pwd)
            pp_end
        fi
    done
}

pp_status(){
    for dir in $(ls $(pwd));do
        if [ -d $dir ];then
            pp_begin

            echo_green $(pwd)/$dir
            cd $dir
            git status
            echo_ok 0 "update success!"
            cd ../

            pp_end
        fi
    done
}

##################################################################
# 一切从这里开始
# -1. logo
echo_green "=== pp(@$pp_company,by $pp_authore) $* ==="
# 1. lets go
case C$1 in
    Cdeploy)
        pp_deploy $1 $2
        ;;
    Cpullmaster)
        pp_pullmaster
        ;;
    Cpullcur)
        pp_pullcur
        ;;
    Cstatus)
        pp_status
        ;;
    C|Chelp)
        usage
        ;;
esac
#echo ""
