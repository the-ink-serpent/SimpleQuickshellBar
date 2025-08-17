import QtQuick
import QtQuick.Layouts
import Quickshell

Rectangle{
    //get clock data
    SystemClock{
        id: clock
        precision: SystemClock.seconds
    }
    Text{
        id: timeBlock
        anchors{
            verticalCenter: parent.verticalCenter
        }
        text: Qt.formatDateTime(clock.date, "hh:mm dd MMM, yyyy")
        color: "#666666"
        Component.onCompleted: {
            parent.width = timeBlock.contentWidth
        }
    }
}