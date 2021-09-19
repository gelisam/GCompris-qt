/* GCompris - RemovePupilsDialog.qml
 *
 * SPDX-FileCopyrightText: 2021 Emmanuel Charruau <echarruau@gmail.com>
 *
 * Authors:
 *   Emmanuel Charruau <echarruau@gmail.com>
 *
 *   SPDX-License-Identifier: GPL-3.0-or-later
 */
import QtQuick 2.9
import "../../core"
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Popup {
    id: removePupilsDialog

    property alias pupilsNamesText: pupilsNamesText
    property var pupilsNamesList

    signal accepted()

    anchors.centerIn: Overlay.overlay
    width: 600
    height: 400
    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

//    onOpened: {
//        pupilsNamesText.text = "test"
//        print("uuuu")
//       // console.log(pupilsDetailsRepeater.itemAt(2)).pupilDetailsRectangleMouseArea.width

//    }

    ColumnLayout {
        height: parent.height

        width: parent.width

        Rectangle {
            id: removePupilsTextRectangle

            Layout.preferredWidth: parent.width
            Layout.alignment: Qt.AlignCenter
            Layout.minimumHeight: 40
            Layout.preferredHeight: 40
            Text {
                id: deletePupilGroupsText
                anchors.centerIn: parent
                width: parent.width * 2/3
                wrapMode: Text.WordWrap
                text: qsTr("Are you sure you want to remove the following children from the server?")
                font.bold: true
                color: Style.colourNavigationBarBackground
                font {
                  family: Style.fontAwesome
                  pixelSize: 15
                }
            }
        }

        Rectangle {
            id: pupilsNamesTextRectangle

            Layout.preferredWidth: parent.width
            Layout.alignment: Qt.AlignCenter
            Layout.minimumHeight: 80
            Layout.preferredHeight: 100
            Text {
                id: pupilsNamesText
                anchors.centerIn: parent
                font.bold: true
                color: "grey"
                font {
                  family: Style.fontAwesome
                  pixelSize: 12
                }
            }

        }



        Rectangle {
            id: okCancelRectangle

            Layout.preferredWidth: parent.width
            Layout.alignment: Qt.AlignCenter
            Layout.minimumHeight: okButton.height
            Layout.preferredHeight: Layout.minimumHeight

            ViewButton {
                id: okButton

                anchors.right: parent.right
                anchors.bottom: parent.bottom
                text: qsTr("Ok")
                onClicked: {
                    removePupilsDialog.accepted()
                    removePupilsDialog.close()
                }
            }

            ViewButton {
                id: cancelButton

                anchors.right: okButton.left
                anchors.bottom: parent.bottom
                text: qsTr("Cancel")

                onClicked: {
                   console.log("cancel...")
                   removePupilsDialog.close();
                }
            }
        }
    }
}
