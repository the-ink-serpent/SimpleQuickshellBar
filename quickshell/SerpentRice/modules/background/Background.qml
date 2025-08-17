import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import "qs.modules.common"

Variants{
    model: Quickshell.screens
    PanelWindow{
        id: bgRoot
        property string wallpaperPath: Config.options.background.wallpaperPath
        required property var modelData
        screen: modelData
        anchors{
            top: true
            left: true
            right: true
            bottom: true
        }
        color: "transparent"
        mask: Region{}
        WlrLayershell.layer: WrlLayer.Overlay
        Image{
            id: wallpaper
            visible: true
            opacity: 1
            property real value: 0.5
            x: 0
            y: 0
            z: -1
            source: `/home/Wallpapers/01.jpg`
            fillMode: Image.PreserveAspectCrop
            sourceSize{
                width: bgRoot.screen.width
                height: bgRoot.screen.height
            }
        }
    }
}