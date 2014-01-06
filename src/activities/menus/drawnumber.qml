import QtQuick 2.0
import GCompris 1.0

ActivityInfo {
  name: "drawnumber"
  dir: "src/activities/drawnumber"
  difficulty: 4
  icon: "menus/drawnumber.svg"
  author: "Olivier Ponchaut <opvg@edpnet.be>"
  demo: true
  title: qsTr("Draw Number")
  description: qsTr("Draw the picture by following numbers")
  goal: ""
  prerequisite: qsTr("Can count from 1 to 50.")
  manual: qsTr("Draw the picture by clicking on each numbers in the right order.")
  credit: ""
}
