/* GCompris - Data.qml
 *
 * Copyright (C) 2018 Johnny Jazeix <jazeix@gmail.com>
 *
 * Authors:
 *   Johnny Jazeix <jazeix@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.
 */
import "../../../../core"

Dataset {
    objective: qsTr("Set and display time on analog clock for a time containing minutes and seconds.")
    difficulty: 4
    data: [
    {
        "numberOfSubLevels": 5,
        "displayMinutesHand": true,
        "fixedSeconds": 0,
        "displaySecondsHand": false
    },
    {
        "numberOfSubLevels": 5,
        "fixedMinutes": 0,
        "displayMinutesHand": true,
        "fixedSeconds": 30,
        "displaySecondsHand": true
    },
    {
        "numberOfSubLevels": 5,
        "displayMinutesHand": true,
        "displaySecondsHand": true
    },
    {
        "numberOfSubLevels": 10,
        "displayMinutesHand": true,
        "displaySecondsHand": true,
        "zonesVisible": false
    }
    ]
}
