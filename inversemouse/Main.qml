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

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true


    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("inversemouse")

        Button {
            id: button
            text: "Press me"
            onClicked: {
                var component = Qt.createComponent("Popup.qml");
                var obj = component.create(parent);
                obj.visible = true;
            }
        }
    }
}

