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
        color: "#327da8"
        Rectangle{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width-10
            height: parent.height-10
            color: "white"
            radius: 10
            border.color: "#1a9107"
            ScrollView{
                id: scroller
                anchors.fill: parent
                clip: true
                implicitHeight: height
                padding: 25

                Grid{
                    anchors.fill: parent
                    rows: 15; columns: 1;
                    spacing: 20
                    padding: 10
                    Rectangle{

                        width: 452
                        height: 332
                        color: "#327da8"
                        radius: 10
                        border.color: "#1a9107"
                        Image{
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            width: parent.width - 20
                            height: parent.height - 20
                            source: "images/microprocessor1.jpg"
                        }
                    }
                    Rectangle{
                        height: 1
                        color: "#1a9107"
                        width: scroller.width - 200
                    }
                    Label{
                        text: "1) Подключаем CLK к кнопке SW3, а также соединяем выводы TxD и RxD"
                    }
                    Rectangle{
                        height: 1
                        color: "#1a9107"
                        width: scroller.width - 200
                    }

                    Label{
                        text: "2) Подключаем все сигналы порта SIO1 к выводам микросхемы, а именно:
            -P1CFG = 01Fh
            -P2CFG = 0E0h
            -P3CFG = 80h
            -SIOCFG = 00h"
                    }
                    Rectangle{
                        height: 1
                        color: "#1a9107"
                        width: scroller.width - 200
                    }
                    Label{
                        text: "3) Заносим во внутренний регистр управления (БА + 3) число 83h:
            -Порты БА + 0 и БА + 1 используются для доступа частоты
            -Контроля по четности нет
            -Обычное функционирование адаптера
            -1 стоп-бит
            -Длина слова = 8 бит"
                    }
                    Rectangle{
                        height: 1
                        color: "#1a9107"
                        width: scroller.width - 200
                    }
                    Label{
                        text: "4) Заносим делитель частоты 1, тоесть рабочая частота около 115 МГц (максимальная)"
                    }
                    Rectangle{
                        height: 1
                        color: "#1a9107"
                        width: scroller.width - 200
                    }
                    Label{
                        text: "5) Заносим во внутренний регистр управления (БА + 3) число 03h:
            -Порты БА + 0 и БА + 1 используются для доступа к регистрам данных и разрешение прерываний
            -Обычное функционирование адаптера
            -Контроля по четности нет
            -1 стоп-бит
            -Длина слова = 8 бит"
                    }
                    Rectangle{
                        height: 1
                        color: "#1a9107"
                        width: scroller.width - 200
                    }
                    Label{
                        text: "6) В цикле сравниваем содержимое порта БА + 5 c 20h (32 в десятичной системе), таким образом проверяя 5 бит. Если 5 бит = 1, то это означает, что буферный регистр передатчика пуст
            -Если буферный регистр пуст, то загружаем в порт БА + 5 данные(буфер данных передатчика из адреса 4100h).
            -Считываются данные с БА + 5 (если биты 5, 6 = 1, то данные переданы польностью, если бит 0 = 1, то пришли новые данные
            -Запись данных по адресу 4200h"
                    }
                    Rectangle{
                        height: 1
                        color: "#1a9107"
                        width: scroller.width - 200
                    }
                    Label{
                        text: "7) Возращаемся к пункту 6)"
                    }
                }
            }
        }


    }
    BackButton { onClicked: root.backButtonClicked() }
}
