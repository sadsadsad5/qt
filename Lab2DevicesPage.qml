import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import com.lab2.device 1.0

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
                text: device.getDeviceInfo
            }
        }

        BackButton { onClicked: root.backButtonClicked() }
    }

    DeviceInfo{
        id: device
    }
}
