import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:smart_gram/Utils/methods.dart';
import 'package:smart_gram/screens/poduct_details.dart';
import 'package:smart_gram/utils.dart';
import '../Model/product_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Product> users = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Methods().getUser(users),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (users.isEmpty) {
          return Center(
              child: Column(
            children: const [
              CircularProgressIndicator(color: Colors.red),
              Text("No Data Here")
            ],
          ));
        } else {
          return Stack(
            children: [
              Column(children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color(0xFF059176),
                    )),
                Expanded(flex: 6, child: Container(color: Colors.white))
              ]),
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 45,
                        child: Container(
                          margin: const EdgeInsets.only(left: 25, right: 25),
                          child: const TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 15),
                                prefixIcon: Icon(Icons.search,
                                    color: Color(0xFF059176)),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide.none),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Search Product'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        height: 200,
                        width: double.infinity,

                        child: PageView.builder(
                            itemCount: 3,
                            pageSnapping: true,
                            onPageChanged: (page) {},
                            itemBuilder: (context, pagePosition) {
                              return Container(
                                margin: const EdgeInsets.all(10),
                                child:
                                    Image.asset("assets/images/home_image.png"),
                              );
                            }),
                        // height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(left: 12, top: 33),
                              child: const Text(
                                "Category",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )),
                          Container(
                              padding:
                                  const EdgeInsets.only(right: 12, top: 33),
                              child: const Text(
                                "view all",
                                style: TextStyle(
                                    color: Color(0xFF059176), fontSize: 14),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 111,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: users.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                _onTap(context, index);
                              },
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        users[index].image,
                                        height: 80,
                                        width: 120,
                                      ),
                                      Text(users[index].name)
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ))
            ],
          );
        }
      },
    );
  }

  _onTap(BuildContext context, int index) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (cxt) => ProductDetails(product: users[index])));
    Utils().showToast(users[index].name);
  }
}
