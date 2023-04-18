import QtQuick.Window
import QtQuick

Window {


    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property color bgcolor: "#5A6263"
    property color buttoncolor: "green"
    property color hovercolor: "limegreen"
    property color clickcolor: "yellow"
    property int size: 100

    Rectangle{
        id:background
        color: root.bgcolor
        width: 100
        height: parent.height

        Column{
            id:column
            anchors.fill:parent

            spacing: 5

            Hoverbutton
            {

                id:cat
                width:100
                height:50
                title.text:"Cat"
                color:root.buttoncolor
                hovercolor: root.hovercolor
                clickcolor : root.clickcolor
                area.onPressed: photo.source = "qrc:/cat.jpg"


            }


            Hoverbutton
            {

                id:dog
                width:100
                height:50
                title.text:"Dog"
                color:root.buttoncolor
                hovercolor: root.hovercolor
                clickcolor : root.clickcolor
                area.onPressed: photo.source = "qrc:/dog.jpg"


            }

            Hoverbutton
            {
                id:fish
                width: 100
                height: 50
                title.text: "Fish"
                color:root.buttoncolor
                hovercolor: root.hovercolor
                clickcolor: root.clickcolor
                area.onPressed: photo.source = "qrc:/fish.jpg"
            }


        }

    }

    Rectangle{
        id:rectangle
        color: root.bgcolor
        x:100
        y:0
        width: parent.width - x
        height: parent.height

        Image{
            id:photo
            anchors.margins: 20
            anchors.fill:parent
            fillMode: photo.PreserveAspectFit
            source:"qrc:/logo.png"

        }

    }
}
