#include <libxml/parser.h>
#include <libxml/tree.h>
#include "KernelModuleMgr.hpp"
namespace SvrFrame {
class KernelModuleMgrImpl : public KernelModuleMgr {
public:
    void loadKernelModule_all(const std::string& confFile) override
    {
        xmlInitParser();
        xmlDocPtr doc = xmlReadFile(confFile.c_str(), NULL, 0);
        if (doc == NULL) {
            return;
        }
        xmlNode *root_element = xmlDocGetRootElement(doc);
        for (xmlNode *node = root_element; node; node = node->next) {
        }
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return;
    }
};
KernelModuleMgr& KernelModuleMgr::instance()
{
    static KernelModuleMgrImpl ins;
    return ins;
}
}