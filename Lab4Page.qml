import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15

Page {
    id: root
    signal backButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "white"
        ScrollView{
            anchors.fill: parent
            clip: true
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            padding: 15
            contentHeight: charactBlock.height + picturesBlock.height
            Rectangle{
                height: 100
                width: parent.width
                color: "red"
            }

            Grid{
                anchors.fill: parent
                rows: 3; columns: 1
                spacing: 15
                Layout.fillWidth: true
                Rectangle{
                    id: picturesBlock
                    height: 350
                    width: parent.width
                    ScrollView{
                        anchors.fill: parent
                        clip: true
                        ScrollBar.horizontal.policy: ScrollBar.AlwaysOn
                        Rectangle{
                            width: 530
                            height: 300
                            Image{
                                anchors.fill: parent
                                source: "images/projector.png"
                            }
                        }
                    }

                }
                Rectangle{
                    width: parent.width
                    height: 1
                    color: "#327da8"
                }
                Rectangle{
                    id: charactBlock
                    height: 700
                    width: parent.width
                    ColumnLayout{
                        width: page.width
                        RowLayout{
                            Rectangle{
                                height: 50
                                Layout.fillWidth: true
                                Label{
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pointSize: 20
                                    text: "Характеристики"
                                }
                            }
                        }
                        RowLayout{
                            Rectangle{
                                height: 20
                                Layout.fillWidth: true
                                ColumnLayout{
                                    width: page.width
                                    RowLayout{
                                        Layout.fillWidth: true
                                        Lab4TableHeader{headerText: "Основные"}
                                    }
                                    RowLayout{
                                        ColumnLayout{
                                            width: parent.width
                                            Lab4TableElement{mainText: "Тип матрицы"; descText: "3LCD"}
                                            Lab4TableElement{mainText: "Соотношение сторон"; descText: "16:10"}
                                            Lab4TableElement{mainText: "Разрешение матрицы"; descText: "1280x800"}
                                        }
                                    }

                                    RowLayout{
                                        Lab4TableHeader{headerText: "Технические характеристики"}
                                    }
                                    RowLayout{
                                        ColumnLayout{
                                            width: parent.width
                                            Lab4TableElement{mainText: "Количество ламп"; descText: "1"}
                                            Lab4TableElement{mainText: "Мощность лампы"; descText: "210 Вт"}
                                            Lab4TableElement{mainText: "Контрастность"; descText: "15000:1"}
                                        }
                                    }
                                    RowLayout{
                                        Lab4TableHeader{headerText: "Интерфейсы"}
                                    }
                                    RowLayout{
                                        ColumnLayout{
                                            width: parent.width
                                            Lab4TableElement{mainText: "Bluetooth"; descText: "Нет"}
                                            Lab4TableElement{mainText: "Wi-Fi"; descText: "802.11n (Wi-Fi 4)"}
                                            Lab4TableElement{mainText: "VGA"; descText: "Вход/Выход"}
                                            Lab4TableElement{mainText: "DVI"; descText: "Нет"}
                                            Lab4TableElement{mainText: "HDMI"; descText: "2"}
                                            Lab4TableElement{mainText: "DisplayPort"; descText: "Нет"}
                                            Lab4TableElement{mainText: "USB"; descText: "2"}
                                            Lab4TableElement{mainText: "Ethernet (LAN)"; descText: "Нет"}
                                        }
                                    }
                                    RowLayout{
                                        Lab4TableHeader{headerText: "Размеры и вес"}
                                    }
                                    RowLayout{
                                        ColumnLayout{
                                            width: parent.width
                                            Lab4TableElement{mainText: "Ширина"; descText: "302 мм"}
                                            Lab4TableElement{mainText: "Высота"; descText: "92 мм"}
                                            Lab4TableElement{mainText: "Глубина"; descText: "249 мм"}
                                            Lab4TableElement{mainText: "Вес"; descText: "2.7 кг"}
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

            }
        }


        BackButton { onClicked: root.backButtonClicked() }
    }
}
