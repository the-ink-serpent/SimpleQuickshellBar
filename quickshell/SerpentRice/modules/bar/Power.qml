import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.UPower

Rectangle{
    Text{
        id: powerDisplay
        anchors{
            verticalCenter: parent.verticalCenter
            right: timeBlock.Text.left
        }
        text: UPower.displayDevice.percentage * 100 + "%"
        color: "#999999"
        Component.onCompleted: {
            parent.width = powerDisplay.contentWidth
        }
    }
}