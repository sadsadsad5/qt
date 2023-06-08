import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15

Page {
    id: root

    signal writeUSBClicked();
    signal backButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "white"
        Grid{
            columns: 1; rows:3; spacing: 10
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            Button{
                id: writeToUSBButton
                height: 70
                width: 200
                background: Rectangle{
                    color: "#1a9107"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Get USB devices list"
                    font.bold: true
                    color: "white"
                }
                onClicked: root.writeUSBClicked()
            }
            Rectangle{
                width: 200
                height: 100
                radius: 10
                color: "#327da8"
                ColumnLayout{

                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    RowLayout{
                        width: parent.width
                        Layout.fillWidth: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        Label{
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            color: "white"
                            id: labelId
                            text: "This label will change"
                        }
                    }
                    RowLayout{
                        anchors.horizontalCenter: parent.horizontalCenter
                        TextInput{
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            id: myText
                            text: "Type here"; font.pixelSize: 16
                            onEditingFinished: {
                                labelId.text = text;
                            }

                            color: "white"
                        }
                    }
                }


            }


            Rectangle{
                color: "#327da8"
                radius: 10
                width: 200
                height: 100
                Grid {
                    id: colorPicker
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    rows: 3; columns: 3; spacing: 3

                    Cell { cellColor: "red"; onClicked: page.color = cellColor }
                    Cell { cellColor: "green"; onClicked: page.color = cellColor }
                    Cell { cellColor: "blue"; onClicked: page.color = cellColor }
                }
            }
        }

        BackButton { onClicked: root.backButtonClicked() }
    }
}
