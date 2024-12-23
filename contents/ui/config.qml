import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami
import org.kde.kquickcontrols 2.0 as KQControls
import org.kde.plasma.core 2.0 as PlasmaCore
import QtQuick.Layouts 1.0 as QQLayouts

Kirigami.FormLayout {
    id: generalPage
    signal configurationChanged

    property alias cfg_size: sizeTextField.text
    property alias cfg_opacity: opacityTextField.text
    // property alias cfg_radius: radiusTextField.text

    QQC2.TextField {
        id: sizeTextField
        Kirigami.FormData.label: i18n("Size: ")
    }

    QQC2.TextField {
        id: opacityTextField
        Kirigami.FormData.label: i18n("Opacity: ")
    }
    
    // QQC2.TextField {
    //     id: radiusTextField
    //     Kirigami.FormData.label: i18n("Border radius: ")
    // }
}   
