import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3
import com.lab3.switcher 1.0

Page {
    id: root
    signal backButtonClicked();
    focus: true
    Keys.onPressed: {
        if(event.key === Qt.Key_Up){
            event.acceptable = true;
            mesDialog.open()
        }

        if(event.key >= Qt.Key_F1 && event.key <= Qt.Key_F12){
            event.acceptable = true;
            indicatorSwitcher.pressAllIndicators();
        }
    }

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "white"

        Rectangle{
            width: parent.width-300
            height: parent.height-300
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            Column{
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10
                Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    height: 100
                    width: 250
                    background: Rectangle{
                        color: "#1a9107"
                        radius: 5
                    }
                    contentItem: Text{
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        text: "Led indicators for 1 second"
                        font.pointSize: 12
                        font.bold: true
                        color: "white"
                    }
                    onClicked:{
                        indicatorSwitcher.lightAllIndicators();
                    }
                }
            }
        }

        Dialog {
            id: mesDialog;
            modality: Qt.WindowModal
            width: 600
            height: 400
            contentItem: Rectangle{
                id: mesDiaolgItem
                color: "#327da8"

                focus: true
                Rectangle{
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    color: "#1a9107"
                    radius: 5
                    width: 250
                    height: 100
                    Label{
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Press any indicator key"
                        color: "white"
                        font.bold: true;
                        font.pointSize: 12
                    }
                }

                Button{
                    id: navButton
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.margins: 10
                    height: 50
                    width: 50
                    background: Image{
                        source: "/images/back-button.png";
                    }
                    onClicked: mesDialog.close()
                }

                Keys.onPressed: {
                    if(event.key === Qt.Key_CapsLock){
                        event.acceptable = true;
                        if(indicatorSwitcher.getCapsLockStatus()){
                            capsPressed.text = "Caps pressed";
                        }else{
                            capsPressed.text = "Caps released";
                        }
                        capsPressed.open();
                    }
                    if(event.key === Qt.Key_NumLock){
                        event.acceptable = true;
                        if(indicatorSwitcher.getNumLockStatus()){
                            numLockPressed.text = "NumLock pressed";
                        }else{
                            numLockPressed.text = "NumLock released";
                        }
                        numLockPressed.open();
                    }
                    if(event.key === Qt.Key_ScrollLock){
                        event.acceptable = true;
                        if(indicatorSwitcher.getScrollLockStatus()){
                            scrollLockPressed.text = "ScrollLock indicator on";
                        }else{
                            scrollLockPressed.text = "ScrollLock indicator off";
                        }
                        scrollLockPressed.open();
                    }
                }
            }
            title: "Task 2"
        }

        MessageDialog{
            id: capsPressed
            modality: Qt.WindowModal
            title: "Button pressed"
            text: "You pressed CapsLock button"
            onAccepted: {
                capsPressed.close();
            }
        }

        MessageDialog{
            id: numLockPressed
            modality: Qt.WindowModal
            title: "Button pressed"
            text: "You pressed NumLock button"
            onAccepted: {

                numLockPressed.close();
            }
        }

        MessageDialog{
            id: scrollLockPressed
            modality: Qt.WindowModal
            title: "Button pressed"
            text: "You pressed ScrollLock button"
            onAccepted: {

                scrollLockPressed.close();
            }
        }

        BackButton { onClicked: root.backButtonClicked() }
    }

    IndicatorSwitcher{
        id: indicatorSwitcher
    }
}
