#!/bin/bash
# 添加三方库链接
#export LD_LIBRARY_PATH=/home/abi/桌面/CodeRepository/ThirdPart/libxml2/libxml2-2.7.2/libs:$LD_LIBRARY_PATH
# KernelModule.xml的位置
export KERNEL_MODULE_CONFIGURATION="$(dirname "$(pwd)")/etc"
#添加本仓的库
export LD_LIBRARY_PATH="$(dirname "$(pwd)")/lib":$LD_LIBRARY_PATH