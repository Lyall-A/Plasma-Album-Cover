import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.1

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.private.mpris as Mpris

PlasmoidItem {
    id: root
    width: Plasmoid.configuration.size
    height: Plasmoid.configuration.size
    Layout.minimumWidth: Plasmoid.configuration.size
    Layout.minimumHeight: Plasmoid.configuration.size

    Mpris.Mpris2Model {
        id: mpris2Model
    }

    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground

    Image {
        anchors.fill: parent
        source: mpris2Model.currentPlayer?.artUrl
        fillMode: Image.PreserveAspectFit
        opacity: Plasmoid.configuration.opacity / 100
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            const playbackStatus = mpris2Model.currentPlayer?.playbackStatus;
            if (playbackStatus === undefined) return;
            mpris2Model.currentPlayer.playbackStatus = playbackStatus === 2 ? 0 : 2;
        }
    }
}