import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                          SizedBox(
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
                          SizedBox(
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
                          SizedBox(
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
                          Row(
                            children: [
                              DropdownButton(
                                value: dropdownvalue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                ))
          ],
        ));
  }

  void setState(Null Function() param0) {}
}
