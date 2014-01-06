import QtQuick 2.0
import GCompris 1.0

ActivityInfo {
  name: "followline"
  dir: "src/activities/followline"
  difficulty: 1
  icon: "menus/followline.svg"
  author: "Bruno Coudoin <bruno.coudoin@gcompris.net>"
  demo: false
  title: qsTr("Control the hose-pipe")
  description: qsTr("Tux needs to water the flowers, but the hose is blocked.")
  goal: qsTr("Fine motor coordination")
  prerequisite: ""
  manual: qsTr("Move the mouse over the red part of the hose-pipe. This will move it, bringing it, part by part, up to the flowers. Be careful, if you move off the hose, the red part will go back down.")
  credit: ""
}
