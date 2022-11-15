import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12
Window {
    width: 1440
    height: 600
    visible: true
    title: qsTr("Hello World")
    color: "#000000"

    property int speed // mendeklarasikan variable
    property int temp_mesin // mendeklarasikan variable
    property int temp_ruangan // mendeklarasikan variable
    property int rotasi // mendeklarasikan variable
     property int tujuan // mendeklarasikan variable
     property real rata_batarai  // mendeklarasikan variable
         property real odometer // mendeklarasikan variable
      property int clock // mendeklarasikan variable
        property int valbattery
     property int tahan_baterai

    Rectangle {
        width: 1440
        height: 600
        color: "#000000"
        anchors.centerIn: parent

        Image {
            id: _2
            x: -46
            y: 77
            width: 1532
            height: 447
            source: "images/2.png"
            fillMode: Image.PreserveAspectFit

            Image {
                id: subtract
                x: 45
                y: -58
                width: 1443
                height: 544
                source: "images/Subtract.png"
                fillMode: Image.PreserveAspectFit

                Image {
                    id: union
                    x: 157
                    y: 378
                    width: 1130
                    height: 158
                    opacity: 1
                    visible: true
                    source: "images/Union.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                          id: vector1
                          x: 679
                          y: 102
                          width: 37
                          height: 28
                          source: "images/Vector-1.png"
                          fillMode: Image.PreserveAspectFit
                          opacity: 1
                          MouseArea {
                              anchors.fill: parent
                              onClicked: {
                                  if(vector1.opacity >= 0.3)
                                  {
                                      vector1.opacity = 1
                                      vector2.opacity = 0.3
                                  }

                              }
                          }
                      }

                      Image {
                          id: vector2
                          x: 751
                          y: 100
                          width: 43
                          height: 30
                          source: "images/Vector-2.png"
                          fillMode: Image.PreserveAspectFit
                          opacity: 0.3

                          MouseArea {
                              anchors.fill: parent
                              onClicked: {

                                  if(vector2.opacity >= 0.3)
                                  {
                                      vector2.opacity = 1
                                      vector1.opacity = 0.3
                                  }
//                                  if(vector2.opacity >= 1)
//                                      vector2.opacity = 0.5
//                                  else
//                                      vector2.opacity = 1
                              }
                          }
                      }


                Image {
                    id: rightsign
                    x: 816
                    y: 100
                    width: 28
                    source: "images/Vector-3.png"
                    fillMode: Image.PreserveAspectFit
                    opacity:0.3
                    MouseArea {
                               anchors.fill: parent
                               onClicked: {
                                   if (blinkrightsign.running === false)
                                       blinkrightsign.running = true
                                   else
                                       blinkrightsign.running = false
                                   if(rightsign.opacity === 1)
                                       rightsign.opacity = 0.3
                               }

                           }
                }

                Image {
                    id: leftsign
                    x: 615
                    y: 100
                    width: 28
                    height: 30
                    source: "images/Vector.png"
                    fillMode: Image.PreserveAspectFit
                    opacity:0.3
                    MouseArea {
                                       anchors.fill: parent
                                       onPressAndHold:  {
                                           if (blinkleftright.running === false)
                                               blinkleftright.running = true
                                           else
                                               blinkleftright.running = false
                                           if (leftsign.opacity && rightsign.opacity === 1)
                                           {
                                               leftsign.opacity = 0.3
                                               rightsign.opacity = 0.3
                                           }
                                       }
                                       onClicked: {
                                           if(blinkleftsign.running === false)
                                               blinkleftsign.running = true
                                           else
                                               blinkleftsign.running = false
                                           if(leftsign.opacity === 1)
                                               leftsign.opacity = 0.3
                                       }
                                   }
                }

                Image {
                    id: _5879yu
                    x: 798
                    y: 14
                    width: 44
                    height: 41
                    source: "images/5879yu.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: group
                    x: 558
                    y: 13
                    width: 43
                    height: 40
                    source: "images/Group.png"
                    fillMode: Image.PreserveAspectFit
                }
            }



            Text {
                id: text1
                x: 720
                y: 107
                color: "#ffffff"
                font.pixelSize: 100
                font.family: "Montserrat Alternates"
                text:{
                    if (tujuan ==0){
                    qsTr("0")
                    }
                    else{
                    speed.toString()
                    }
}
            }
            Image {
                id: h
                x: 730
                y: 250
                source: "images/h.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: _3
                x: 450
                y: 373
                source: "images/3.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: _4
                x: 918
                y: 378
                source: "images/4.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: text2
                x: 563
                y: 368
                color: "#ffffff"
                text: qsTr("w/km")
                font.pixelSize: 26
                font.family: "Montserrat Alternates"
            }

            Text {
                id: text3
                x: 507
                y: 370
                color: "#ffffff"
                text: {
                    if (tujuan ==0){
                               qsTr("0")
                                   }
                  else{
                   rata_batarai.toString()
                      }
                    }
                font.pixelSize: 26
                font.family: "Montserrat Alternates"
            }

            Text {
                id: text4
                x: 1059
                y: 373
                color: "#ffffff"
                text: qsTr("km")
                font.pixelSize: 26
                font.family: "Montserrat Alternates"
            }

            Text {
                id: text5
                x: 994
                y: 373
                color: "#ffffff"
                text: odometer.toString()
                font.pixelSize: 26
                font.family: "Montserrat Alternates"
            }

            Text {
                id: text6
                x: 1136
                y: 440
                color: "#ffd700"
                text: tahan_baterai.toString()
                font.pixelSize: 22
                font.family: "Montserrat Alternates"
                Image {
                    id: bateraipersen
                   x:{
                       if(tahan_baterai==100){
                        "39"

                    }
                       else{
                        "30"
                       }
                   }
                    y: 0
                    width: 15
                    height: 25
                    source: "images/%.png"
                    fillMode: Image.PreserveAspectFit
                }

            }

            Image {
                id: frame
                x: 702
                y: 315
                width: 35
                height: 35
                source: "images/rpm.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: text10
                x: 802
                y: 321
                color: "#ffffff"
                text: qsTr("rpm")
                font.pixelSize: 23
                font.family: "Montserrat Alternates"
            }

            Text {
                id: text11
                x: 745
                y: 321
                color: "#ffffff"
//                text: qsTr("1000")

                font.pixelSize: 23
                font.family: "Montserrat Alternates"
                text:{
                    if (tujuan ==0){
                               qsTr("0")
                                   }
                  else{
                    rotasi.toString()
                      }
                    }
            }

            Image {
                id: vector6
                x: 883
                y: 360
                source: "images/Vector 6.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: vector7
                x: 372
                y: 355
                width: 252
                height: 40
                source: "images/Vector 7.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: text13
                x: 890
                y: -35
                color: "#ffffff"
                text: temp_ruangan.toString()
                font.pixelSize: 22
                font.family: "Montserrat Alternates"

            }
            Image {
                id: celcius
                x: 915
                y: -32
                width: 22
                height: 18
                source: "images/Celcius.png"
                fillMode: Image.PreserveAspectFit
                }

            Text {
                id: timeText
                y: -38
                color: "#ffffff"
                font.pixelSize: 26
                anchors.horizontalCenterOffset: 3
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Montserrat Alternates"

          text: Qt.formatTime(new Date(),"hh:mm")
        }
            Timer {
                    interval: 2000
                    running: true
                    repeat: true

                    onTriggered: {
                        var date = new Date()
                        timeText.text = date.toLocaleTimeString(Qt.LocalTime, Locale.ShortFormat)
                    }
                }



            Image {
                id: farheint
                x: 684
                y: -32
                width: 22
                height: 18
                source: "images/farheint.png"
                fillMode: Image.PreserveAspectFit
}
            Text {
                id: temperaturmesin
                x: 648
                y: -35
                color: "#ffffff"
//                text: qsTr("°F")
                text: temp_mesin.toString()
                font.pixelSize: 22
                font.family: "Montserrat Alternates"
            }

            Image {
                id: n
                x: 751
                y: 369
                width: 37
                height: 48
                source: "images/N.png"
                fillMode: Image.PreserveAspectFit
                opacity: 1
                MouseArea {
                    anchors.fill: parent
                    onClicked: {

                        if(n.opacity >= 0.3)
                        {
                            n.opacity = 1
                            d.opacity = 0.5
                            s.opacity = 0.5
                            r.opacity = 0.5
                            p.opacity = 0.5

                        }


//                        if(n.opacity >= 1)
//                            n.opacity = 0.3
//                        else
//                            n.opacity = 1
                    }
                }
            }
            Text {
                id: text9
                x: 692
                y: 420
                color: "#ffffff"
                text: qsTr("Rest.")
                font.pixelSize: 23
                font.family: "Montserrat Alternates"
            }
            Text {
                id: text7
                x: 752
                y: 420
                color: "#ffd700"
                text: tujuan.toString()
                font.pixelSize: 23
                font.family: "Montserrat Alternates"
            }
            Text {
                id: text8
                x: 796
                y: 420
                color: "#ffd700"
                text: qsTr("km")
                font.pixelSize: 23
                font.family: "Montserrat Alternates"
            }
            Image {
                id: s
                x: 685
                y: 375
                source: "images/S.png"
                fillMode: Image.PreserveAspectFit
                opacity: 0.5
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if(s.opacity >=  0.5)
                        {
                            s.opacity =  1
                            n.opacity =  0.3
                            d.opacity =  0.5
                            r.opacity =  0.5
                            p.opacity =  0.5

                        }


//                        if(s.opacity >= 1)
//                            s.opacity = 0.5
//                        else
//                            s.opacity = 1
                    }
                }
            }
            Image {
                id: d
                x: 719
                y: 378
                source: "images/D.png"
                fillMode: Image.PreserveAspectFit
                opacity: 0.5
                MouseArea {
                    anchors.fill: parent
                    onClicked: {

                        if(d.opacity >=  0.5)
                        {
                            d.opacity =  1
                            n.opacity =  0.3
                            s.opacity =  0.5
                            r.opacity =  0.5
                            p.opacity =  0.5

                        }


//                        if(d.opacity >= 1)
//                            d.opacity = 0.5
//                        else
//                            d.opacity = 1
                    }
                }
            }
            Image {
                id: p
                x: 802
                y: 378
                source: "images/P.png"
                fillMode: Image.PreserveAspectFit
                opacity: 0.5
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if(p.opacity >=  0.5)
                        {
                            p.opacity =  1
                            n.opacity =  0.3
                            d.opacity =  0.5
                            r.opacity =  0.5
                            s.opacity =  0.5

                        }
//                        if(p.opacity >= 1)
//                            p.opacity = 0.5
//                        else
//                            p.opacity = 1
                    }
                }
            }
            Image {
                id: r
                x: 837
                y: 378
                source: "images/R.png"
                fillMode: Image.PreserveAspectFit
                opacity: 0.5
                MouseArea {
                    anchors.fill: parent
                    onClicked: {

                        if(r.opacity >=  0.5)
                        {
                            r.opacity =  1
                            n.opacity =  0.3
                            d.opacity =  0.5
                            s.opacity =  0.5
                            p.opacity =  0.5

                        }
//                        if(r.opacity >= 1)
//                            r.opacity = 0.5
//                        else
//                            r.opacity = 1
                    }
                }
            }
        }


        Image {
            id: e
            x: 326
            y: 520
            source: "images/E.png"
            fillMode: Image.PreserveAspectFit
              opacity: {

              if(valbattery > 114){
                  "0.5"
              }
              else if(valbattery => 114){
                  "1"
              }
           }

        }

                    Image {
                        id: group5
                        x: 350
                        y: 509
                        width: 730
                        height: 37
                        source: "images/baterai.png"
                        fillMode: Image.PreserveAspectFit
                    }


        Rectangle {
            id: batteryrectangle
            x: 350
            y: 522
            height: 10
            color: {
            if(valbattery > 114){
                "#39D91F"
            }
            else if(valbattery <= 114){
                    "#FF0E0E"
            }
}

        }

        Timer {
            id: batteryrectanglewidthmin
            interval: 200
            running: true
            repeat: true
            onTriggered: {

                batteryrectangle.width = valbattery


            }
        }




    }
    Timer {
        id: timer
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            speed = kecepatan.getData()
            temp_mesin= mesin.getsuhu()
            rotasi= roda.getputaran()
            valbattery=kecepatan.getBatteryMin()
            temp_ruangan=panas.getsuhu1()
            rata_batarai=irit.getrata().toFixed(1)
            }

}
    Timer {
        id: timerbaterai
        interval:735
        repeat: true
        running: true
        onTriggered: {

            tahan_baterai =lama.getpersent()

            }
    }

    Timer {
        id: timer1
        interval:1
        repeat: true
        running: true
        onTriggered: {

            odometer=km.gettempuh().toFixed(2)

            }

}

    Timer {
        id: timer2
        interval: 1720
        repeat: true
        running: true
        onTriggered: {

            tujuan= istirahat.getsisa()
            }

}


    Timer {
              id: blinkleftsign
              interval: 500
              running: false
              repeat: true
              onTriggered: {
                  if (leftsign.opacity === 0.3)
                  {
                      leftsign.opacity = 1
                  }
                  else if (leftsign.opacity === 1)
                  {
                      leftsign.opacity = 0.3
                  }
              }
          }

          Timer {
              id: blinkrightsign
              interval: 500
              running: false
              repeat: true
              onTriggered: {
                  if (rightsign.opacity === 0.3)
                  {
                      rightsign.opacity = 1
                  }
                  else
                  {
                      rightsign.opacity = 0.3
                  }
              }
          }

          Timer {
              id: blinkleftright
              interval: 500
              running: false
              repeat: true
              onTriggered: {
                  if (leftsign.opacity && rightsign.opacity === 0.3)
                  {
                      leftsign.opacity = 1
                      rightsign.opacity =1
                  }
                  else
                  {
                      leftsign.opacity = 0.3
                      rightsign.opacity = 0.3
                  }
              }
          }

}
