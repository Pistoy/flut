import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Text("Hoş Geldiniz",
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  Text("Mehmet Ertürk",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ]),
                Icon(
                  Icons.settings,
                  color: Colors.black,
                )
              ],
            ),
            backgroundColor: Colors.white,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                      fit: BoxFit.fill,
                      height: 200,
                      width: 1000,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20),
                  child: Container(
                    // margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade300, width: 1.5))),
                    child: RichText(
                        text: TextSpan(
                            text: "Sağlık Olsun\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          TextSpan(
                            text:
                                "balba olarak sağlık durumunu güncel olarak takip edebilmek için bir uygulama geliştirdik",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey.shade600,
                                fontSize: 15),
                          )
                        ])),
                    padding: EdgeInsets.only(bottom: 20),
                  )),
              // Padding(padding: EdgeInsets.all(30)),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 15),
                child: Text(
                  "Planlama",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Flexible(
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 15, right: 15, bottom: 15),
                        child: SizedBox(
                          child: Card(
                            margin: EdgeInsets.all(1.5),
                            elevation: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Hangi günler ofise geleceksin?",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.call_made,
                                  color: Colors.orange,
                                )
                              ],
                            ),
                          ),
                          height: 50,
                          width: 1000,
                        ),
                      ),
                      fit: FlexFit.tight),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "İşlemler",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Card(
                            elevation: 7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.qr_code_2_rounded,
                                    color: Colors.orange, size: 100),
                                Text(
                                  "BMB Pass",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                        flex: 30,
                        // width: 200,
                        // height: 200,
                      ),
                      Expanded(
                        flex: 30,
                        child: Card(
                          elevation: 7,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.health_and_safety_rounded,
                                  color: Colors.orange,
                                  size: 100,
                                ),
                                Text(
                                  "Doktor Bilgisi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                        // width: 200,
                        // height: 200,
                      )
                    ]),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.orange,
                  ),
                  label: "Ana Sayfa"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.details,
                  ),
                  label: "Sağlık Durumu"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.car_rental), label: "Servis & QR Kod")
            ],
          )
        ),
    );
  }
}

// Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg', width: 500, height: 300, fit: BoxFit.fill)
