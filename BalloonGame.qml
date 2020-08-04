import QtQuick 2.0
import QtQuick.Particles 2.0

Item {
    id: root
    anchors.fill: parent

    property int shooted: 0
    property int missed: 0
    property int fontSize: 36

    Item {
        id: startScreen
        anchors.fill: parent
        z: 1000
        Text {
            text: "Press a button\nto start a game"
            anchors.centerIn: parent
            renderType: Text.NativeRendering
            color: "white"
            font.pixelSize: fontSize
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {//Game Start
                parent.visible = false;
            }
        }
    }

    Item {
        id: gameOverScreen
        anchors.fill: parent
        z: 1000
        visible: missed >= 20
        Text {
            text: "Game Over\n\nShooted: %1\nMissed: %2".arg(shooted).arg(missed)
            anchors.centerIn: parent
            renderType: Text.NativeRendering
            color: "white"
            font.pixelSize: fontSize
        }
    }

    Rectangle {
        id: bg
        anchors.fill: parent
        color: "lightsteelblue"

        Text {
            anchors.centerIn: parent.TopLeft
            renderType: Text.NativeRendering
            anchors.left: parent.left
            anchors.rightMargin: 8

            visible: !startScreen.visible && !gameOverScreen.visible

            text: "Shooted: %1\nMissed: %2".arg(shooted).arg(missed)
            color: "white"
            font.pixelSize: fontSize
        }
    }

    BallonParticleSystem {
        id: particleSystem
        anchors.fill: parent
        running: !startScreen.visible && !gameOverScreen.visible
        visible: running
    }

}



