#!/usr/bin/env bash

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

# Check OS Type
osis()
{
    local n=0
    if [[ "$1" = "-n" ]]; then n=1;shift; fi

    # echo $OS|grep $1 -i >/dev/null
    uname -s |grep -i "$1" >/dev/null

    return $(( $n ^ $? ))
}

# Check Command exists
iscmd()
{
    local n=0
    if [[ "$1" = "-n" ]]; then n=1;shift; fi

    command -v $1 > /dev/null

    return $(( $n ^ $? ))
}


