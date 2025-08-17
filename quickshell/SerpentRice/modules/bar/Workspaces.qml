import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

Rectangle{
    anchors{
        left: parent.left
    }
    color: "#666666"
    height: 25
    width: 120
    bottomLeftRadius: 10
    bottomRightRadius: 10
    Rectangle{
        id: workspaceLayout
        anchors{
            verticalCenter: parent.verticalCenter
            left: parent.left
            right: parent.right
            leftMargin: 10
            rightMargin: 10
        }
        
        RowLayout{
            anchors{
                verticalCenter: parent.verticalCenter
            }
            spacing: 5
            Repeater{
                model: Hyprland.workspaces
                Rectangle{
                    width: 15
                    height: 15
                    radius: 10
                    color: modelData.active ? "#000000" : "#333333"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: Hyprland.dispatch("workspace " + modelData.id)
                    }
                }
            }
        }
    }
}