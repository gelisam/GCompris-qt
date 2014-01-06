import QtQuick 2.0
import GCompris 1.0

ActivityInfo {
  name: "magic_hat_minus"
  dir: "src/activities/magic_hat_minus"
  difficulty: 2
  icon: "menus/magic_hat_minus.svg"
  author: "Marc BRUN"
  demo: true
  title: qsTr("The magician hat")
  description: qsTr("Count how many items are under the magic hat after some have got away")
  goal: qsTr("Learn subtraction")
  prerequisite: qsTr("Subtraction")
  manual: qsTr("Look at the magician, he tells the number of stars that are under his magic hat. Then, click on the hat to open it. A few stars escape. Click again on the hat to close it. You have to count how many are still under the hat. Click on the bottom right area to answer.")
  credit: ""
}
