import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    id: root
    signal backButtonClicked();
    signal cpuButtonClicked();
    signal memoryButtonClicked();
    signal deviceButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "white"

        Grid{
            id: infoButtons
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            rows: 5; columns: 1; spacing: 7
            Button{
                id: cpuButton
                height: 100
                width: 200
                background: Rectangle{
                    color: "#1a9107"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "CPU"
                    font.bold: true
                    font.pointSize: 20
                    color: "white"
                }
                onClicked: root.cpuButtonClicked()

            }
            Rectangle{
                height: 1;
                width: parent.width
                color: "#327da8"
            }

            Button{
                id: memoryButton
                height: 100
                width: 200
                background: Rectangle{
                    color: "#1a9107"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Memory"
                    font.bold: true
                    font.pointSize: 20
                    color: "white"
                }
                onClicked: root.memoryButtonClicked()
            }
            Rectangle{
                height: 1;
                width: parent.width
                color: "#327da8"
            }
            Button{
                id: deviceButton
                height: 100
                width: 200
                background: Rectangle{
                    color: "#1a9107"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Devices"
                    font.bold: true
                    font.pointSize: 20
                    color: "white"
                }
                onClicked: root.deviceButtonClicked()
            }
        }



        BackButton { onClicked: root.backButtonClicked() }
    }
}
