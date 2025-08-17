import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import "./modules/bar/"

PanelWindow{
    id: bar
    anchors{
        top: true
        left: true
        right: true
    }
    height: 30
    color: "transparent"

    Rectangle{
        anchors.fill: parent
        color: "#222222"
        bottomLeftRadius: 20
        bottomRightRadius: 20
        //left
        RowLayout{
            anchors{
                //verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 25
            }
            Loader{ active: true; sourceComponent: Workspaces{} }
        }
        //center
        RowLayout{
            anchors{
                horizontalCenter: parent.horizontalCenter
                verticalCenter: parent.verticalCenter
            }
        }
        //right
        RowLayout{
            anchors{
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: 25
            }
            spacing: 10
            Loader{ active: true; sourceComponent: Power{} }
            Loader{ active: true; sourceComponent: Time{} }
        }
    }
}