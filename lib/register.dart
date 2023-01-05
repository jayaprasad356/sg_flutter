import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_gram/home.dart';
import 'package:smart_gram/utils.dart';

import 'Constant.dart';
import 'Services/apiCall.dart';

class registration extends StatelessWidget {
  static const String routeName = '/profilePage';
  var nameController = TextEditingController();
  var mobileNuberConroller = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var mailController = TextEditingController();
  var addressController = TextEditingController();
  var villiageNameController = TextEditingController();
  var pinCodeController = TextEditingController();
  var districtController = TextEditingController();
  late bool status;
  late String message;

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
          title: const Text("Registration"),
          elevation: 0.0,
          backgroundColor: const Color(0xFF059176),
        ),
        body: Stack(
//        fit: StackFit.expand,
          children: [
            Column(children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: const Color(0xFF059176),
                  )),
              Expanded(flex: 6, child: Container(color: Colors.white))
            ]),
            Positioned(
                top: 25,
                left: 20,
                right: 20,
                child: Card(
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          TextField(
                            controller: nameController,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: mobileNuberConroller,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: passwordController,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: confirmPasswordController,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: mailController,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: addressController,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: villiageNameController,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: pinCodeController,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: districtController,
                            decoration: const InputDecoration(
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
                              onPressed: () async {
                                String mobile = mobileNuberConroller.text;
                                String name = nameController.text;
                                String password = passwordController.text;
                                String confirmPassword =
                                    confirmPasswordController.text;
                                String mail = mailController.text;
                                String address = addressController.text;
                                String village = villiageNameController.text;
                                String pinCode = pinCodeController.text;
                                String district = districtController.text;

                                var url = Constant.SIGNUP_URL;
                                Map<String, dynamic> bodyObject = {
                                  Constant.NAME: name,
                                  Constant.MOBILE: mobile,
                                  Constant.PASSWORD: password,
                                  Constant.OCCUPATION: "formar",
                                  Constant.GENDER: "male",
                                  Constant.EMAIL: mail,
                                  Constant.ADDRESS: address,
                                  Constant.VILLAGE: village,
                                  Constant.PINCODE: pinCode,
                                  Constant.DISTRICT: district
                                };

                                try {
                                  String jsonString =
                                      await apiCall(url, bodyObject);
                                  dynamic json = jsonDecode(jsonString);
                                  status = json["success"];
                                  message = json["message"];
                                } catch (e) {
                                  // An error occurred
                                }

                                if (status) {
                                  Utils().showToast(message);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const home()));
                                }else{
                                  Utils().showToast(message);
                                }
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
