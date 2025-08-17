import "./modules/bar/"

import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland

ShellRoot{
    id: root
    LazyLoader{ active: true; component: Bar{} }
}