#include "Controller.h"
#include <stdlib.h>
#include <iostream>
#include <fstream>

Controller::Controller()
{

}

void Controller::setUsbInfo(QString value){
    _usbInfo = value;
}

QString Controller::getUsbInfo(){
    system("dmesg | grep -i usb > ~/Documents/lab1/lab1.txt");
    system("dmesg | grep -i usb > lab1.txt");
    std::ifstream fileusb("lab1.txt", std::ios::in);
    std::string line;
    std::string result;
    std::string buffer;
    if(fileusb.is_open()){
        while(!fileusb.eof()){
            std::getline(fileusb, line);
            result.append(line + "\n");
        }
    }

    _usbInfo = QString::fromStdString(result);
    fileusb.close();
    return _usbInfo;
}
