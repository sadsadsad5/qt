import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

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
}

