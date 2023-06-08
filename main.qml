import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
//import com.myController 1.0

Window {
    width: 640
    height: 480
    visible: true

    title: "Interfaces"

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: mainPage

    }

    MainPage {
        id: mainPage
        onLab1ButtonClicked: {
            stackView.push(pageLab1)
        }
        onLab2ButtonClicked: {
            stackView.push(pageLab2)
        }
        onLab3ButtonClicked: {
            stackView.push(pageLab3)
        }
        onLab4ButtonClicked: {
            stackView.push(pageLab4)
        }
        onLab5ButtonClicked: {
            stackView.push(pageLab5)
        }
    }

    Lab1Page{
        id: pageLab1
        visible: false
        Lab1GetInfoPage {
            id: usbInfoPage
            visible: false
            onBackButtonClicked: stackView.pop(pageLab1)
        }

        onWriteUSBClicked: {
            stackView.push(usbInfoPage)
        }

        onBackButtonClicked: {
            stackView.pop(mainPage)
        }
    }

    Lab2MainPage {
        id: pageLab2
        visible: false
        Lab2CpuPage{
            id: cpuPage
            visible: false
            onBackButtonClicked: stackView.pop(pageLab2)
        }
        Lab2MemoryPage{
            id: memPage
            visible: false
            onBackButtonClicked: stackView.pop(pageLab2)
        }
        Lab2DevicesPage{
            id: devicePage
            visible: false
            onBackButtonClicked: stackView.pop(pageLab2)
        }

        onCpuButtonClicked: stackView.push(cpuPage)
        onMemoryButtonClicked: stackView.push(memPage)
        onDeviceButtonClicked: stackView.push(devicePage)

        onBackButtonClicked: stackView.pop(mainPage)
    }

    Lab3Page{
        id: pageLab3
        visible: false

        onBackButtonClicked: stackView.pop(mainPage)
    }

    Lab4Page{
        id: pageLab4
        visible: false
        onBackButtonClicked: stackView.pop(mainPage)
    }

    Lab5Page{
        id: pageLab5
        visible: false
        onBackButtonClicked: stackView.pop(mainPage)
    }
}
