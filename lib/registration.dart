import 'package:flutter/material.dart';
import 'package:smart_gram/home.dart';

class registration extends StatelessWidget {
  static const String routeName = '/profilePage';

  registration(String s);

  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registration"),
          elevation: 0.0,
          backgroundColor: Color(0xFF059176),
        ),
        body: Stack(
//        fit: StackFit.expand,
          children: [
            Column(children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Color(0xFF059176),
                  )),
              Expanded(flex: 6, child: Container(color: Colors.white))
            ]),
            Positioned(
                top: 25,
                left: 20,
                right: 20,
                child: Card(
                  child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Name'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none
                                    // borderSide: BorderSide(color: Colors.white24)
                                    //borderSide: const BorderSide(),
                                    ),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Mobile Number'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none
                                    // borderSide: BorderSide(color: Colors.white24)
                                    //borderSide: const BorderSide(),
                                    ),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Password'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Confirm Password'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Email ID'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Address '),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Village Name'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Pincode'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'District'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(height: 28),
                          SizedBox(
                            height: 45,
                            width: 170,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => home()));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          const Color(0xFF059176)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)))),
                              child: const Text("Click To Registration"),
                            ),
                          ),
                        ],
                      )),
                ))
          ],
        ));
  }

  void setState(Null Function() param0) {}
}
