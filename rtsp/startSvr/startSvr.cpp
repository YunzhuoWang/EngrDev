#include <iostream>
#include <unistd.h>
int main(int argc, char* argv[]) {
    std::cout << "No arguments provided." << std::endl;

    while(1) {
        sleep(3);
    }
    return 0;

}