import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import com.lab.cont 1.0

Page {
    id: root

    signal backButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "white"
        ScrollView{
            anchors.fill: parent
            clip: true
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            implicitHeight: height
            Label{
                padding: 10
                text: cont.getUsbInfo
            }
        }

        BackButton { onClicked: root.backButtonClicked() }
    }

    USBInfo {
        id: cont
    }
}
