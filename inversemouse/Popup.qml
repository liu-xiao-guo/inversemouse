import QtQuick 2.4
import Ubuntu.Components 1.3

Rectangle {
    anchors.centerIn: parent
    width: 200; height: 200
    color: "darkgray"
    radius: 10
    InverseMouseArea {
       anchors.fill: parent
       acceptedButtons: Qt.LeftButton
       onPressed: parent.destroy()
    }
}
