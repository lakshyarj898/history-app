import 'package:flutter/material.dart';
import 'dart:convert';
//import 'package:http/http.dart' as http;

class Historypage extends StatefulWidget {
  const Historypage({super.key});

  @override
  State<Historypage> createState() => _HistorypageState();
}

class _HistorypageState extends State<Historypage> {
  List<Map<String, dynamic>> myList = [
    {
      "bookname": "The undomestic goddess",
      "name": "Lakshya Raj",
      "date": "18/02/2024",
      "status": "rejected",
      "imagelink": "assets/images/Books_HD_(8314929977).jpg",
      "bookimage": "assets/images/Books_HD_(8314929977).jpg"
    },
    {
      "bookname": "It Starts With Us",
      "name": "Priyanshu Raj",
      "date": "20/02/2024",
      "status": "accepted",
      "imagelink": "assets/images/Books_HD_(8314929977).jpg",
      "bookimage": "assets/images/Books_HD_(8314929977).jpg"
    },
    {
      "bookname": "It ends with us",
      "name": "Divyanshu Raj",
      "date": "21/02/2024",
      "status": "awaited",
      "imagelink": "assets/images/Books_HD_(8314929977).jpg",
      "bookimage": "assets/images/Books_HD_(8314929977).jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'History',
            style: TextStyle(
                color: Color.fromRGBO(91, 82, 163, 1),
                fontWeight: FontWeight.w500,
                fontSize: 35),
          ),
        ),
        body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            final bookname = myList[index]['bookname'];
            final name = myList[index]['name'];
            final date = myList[index]['date'];
            final imagelink = myList[index]['imagelink'];
            final bookimage = myList[index]['bookimage'];
            String message = 'hello';
            double left = 400;

            Color outercontainer = Colors.black;
            Color text1 = Colors.black;
            if (myList[index]['status'] == "rejected") {
              outercontainer = const Color.fromRGBO(255, 224, 224, 1);
              message = 'Rejected';
              left = 400;
              text1 = const Color.fromRGBO(255, 62, 62, 1);
            } else if (myList[index]['status'] == "accepted") {
              outercontainer = const Color.fromARGB(255, 189, 245, 124);
              text1 = Colors.green;
              message = 'Accepted';
              left = 190;
            } else {
              outercontainer = const Color.fromARGB(255, 242, 233, 183);
              text1 = const Color.fromARGB(255, 144, 130, 6);
              message = 'Awaited';
              left = 400;
            }

            return Material(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Card(
                  color: const Color(0xFFFFFFFF),
                  child: ListTile(
                    leading: Container(
                      height: 70,
                      width: 5,
                      decoration: BoxDecoration(
                        color: outercontainer,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    title: ExpansionTile(
                      shape: const Border(),
                      title: Text(
                        bookname,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      children: [
                        Container(
                          height: 177,
                          width: 387,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 5,
                                left: 245,
                                child: Container(
                                  height: 130,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/Books_HD_(8314929977).jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 1,
                                left: 15,
                                child: Container(
                                  height: 100,
                                  width: 220,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 2,
                                        left: 50,
                                        child: Text(
                                          name,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 19),
                                        ),
                                      ),
                                      Positioned(
                                          top: 0,
                                          left: 3,
                                          child: Container(
                                              height: 35,
                                              width: 35,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(
                                                    30.0), // Adjust corner radius
                                                child: const Image(
                                                  image: AssetImage(
                                                      'assets/images/Books_HD_(8314929977).jpg'),
                                                  fit: BoxFit
                                                      .cover, // Adjust image fit (optional)
                                                ),
                                              ))),
                                      Positioned(
                                          top: 60,
                                          left: 7,
                                          child: Container(
                                            height: 27,
                                            width: 27,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(0.0)),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'assets/images/calander.jpeg'),
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: 61,
                                        left: 50,
                                        child: Text(
                                          date,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 19),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 110,
                                  left: 10,
                                  child: Container(
                                    height: 60,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: outercontainer,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0)),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top: 14,
                                            left: 45,
                                            child: Container(
                                              height: 100,
                                              width: 900,
                                              child: Text(
                                                message,
                                                style: TextStyle(
                                                    color: text1,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 19),
                                              ),
                                            )),
                                      ],
                                    ),
                                  )),
                              Positioned(
                                  top: 130,
                                  left: left,
                                  child: Container(
                                    height: 24,
                                    width: 24,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(0.0)),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/tele.jpeg'),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
