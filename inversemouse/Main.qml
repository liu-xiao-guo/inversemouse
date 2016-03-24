import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "inversemouse.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("inversemouse")

        Rectangle {
            width: parent.width
            height: parent.height/2
            border.color: "red"

            Button {
                id: button
                text: "Press me"
                onClicked: {
                    var component = Qt.createComponent("Popup.qml");
                    var obj = component.createObject(parent);
                    obj.visible = true;
                }
            }
        }
    }
}

