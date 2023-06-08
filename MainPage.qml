import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    id: root

    signal lab1ButtonClicked();
    signal lab2ButtonClicked();
    signal lab3ButtonClicked();
    signal lab4ButtonClicked();
    signal lab5ButtonClicked();

    background: Rectangle {
        id: mainBackground
        color: "white"
        width: parent.width
        height:parent.height
        Grid{
            padding: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            rows: 5; columns: 1
            spacing: 10
            Button{
                id: lab1Button
                height: 75
                width: 150
                background: Rectangle{
                    color: "#1a9107"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    text: "USB"
                    color: "white"
                }
                onClicked:{
                    root.lab1ButtonClicked()
                }
            }
            Button{
                id: lab2Button
                height: 75
                width: 150
                background: Rectangle{
                    color: "#1a9107"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    text: "CPU/Memory/Devices"
                    color: "white"
                }
                onClicked:{
                    root.lab2ButtonClicked()
                }
            }
            Button {
                id: lab3Button
                height: 75
                width: 150
                background: Rectangle{
                    color: "#1a9107"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    text: "Keyboard Leds"
                    color: "white"
                }
                onClicked:{
                    root.lab3ButtonClicked()
                }
            }
            Button {
                id: lab4Button
                height: 75
                width: 150
                background: Rectangle{
                    color: "#1a9107"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    text: "Projector"
                    color: "white"
                }
                onClicked:{
                    root.lab4ButtonClicked()
                }
            }
            Button {
                id: lab5Button
                height: 75
                width: 150
                background: Rectangle{
                    color: "#1a9107"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    text: "Microprocessor"
                    color: "white"
                }
                onClicked: {
                    root.lab5ButtonClicked()
                }
            }
        }
    }
}
