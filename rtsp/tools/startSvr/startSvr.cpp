#include <iostream>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <stdio.h>
#include <signal.h>
#include <fcntl.h>
#include "SvrFrame/KernelModuleMgr.hpp"
void createDaemon() {
    std::cout << "createDaemon begin!" << std::endl;
    pid_t pid;
    // 创建子进程，关闭父进程
    pid = fork();
    if (pid < 0) {
        exit(EXIT_FAILURE);
    }
    if (pid > 0) {
        exit(EXIT_SUCCESS);
    }
    // 创建新会话，子进程成为会话的领头进程，失去控制终端
    if (setsid() < 0) {
        exit(EXIT_FAILURE);
    }
    // 捕获信号
    signal(SIGCHLD, SIG_IGN);
    signal(SIGHUP, SIG_IGN);
    // 再次创建子进程，退出父进程
    pid = fork();
    if (pid < 0) {
        exit(EXIT_FAILURE);
    }
    if (pid > 0) {
        exit(EXIT_SUCCESS);
    }
    // 设置文件权限掩码
    umask(0);
    // 修改工作目录
    if (chdir("/") < 0) {
        exit(EXIT_FAILURE);
    }
    // 关闭文件描述符
    close(STDIN_FILENO);
    close(STDOUT_FILENO);
    close(STDERR_FILENO);
}

int main(int argc, char* argv[]) {
    // 创建守护进程
    if (argc <= 2) {
        return -1;
    }
    const std::string kernelConfigurationPath = argv[1];

    createDaemon();
    SvrFrame::KernelModuleMgr& kernelModuleMgr =
        SvrFrame::KernelModuleMgr::instance();
    kernelModuleMgr.loadKernelModule_all(kernelConfigurationPath);

    // 守护进程的主循环
    while (true) {
        sleep(1); // 休眠1秒
    }

    return 0;
}