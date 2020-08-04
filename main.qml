import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 480
    height: 480
    title: qsTr("Balloon Game")

    BalloonGame {
        anchors.centerIn: parent
    }
}
