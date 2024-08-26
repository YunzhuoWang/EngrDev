#pragma one
#include <iostream>
namespace SvrFrame {
class KernelModuleMgr {
public:
    // 从微服务配置文件中加载kernelModule信息，起服务时调用，入参是配置文件路径
    virtual void loadKernelModule_all(const std::string& confFile) = 0;
    static KernelModuleMgr& instance();
};
}