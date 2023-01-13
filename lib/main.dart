import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_gram/home.dart';
import 'package:smart_gram/register.dart';
import 'package:smart_gram/utils.dart';

import 'Constant.dart';
import 'Services/apiCall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = "Smart Gram";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool status;
  late String message;

  @override
  Widget build(BuildContext context) {
    var passwordController = new TextEditingController();
    var mobileNuberConroller = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF059176),
        toolbarHeight: 200,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: SizedBox(
                width: 180,
                height: 150,
                child: ClipOval(
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(MyApp._title)
          ],
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(right: 28, left: 28),
          child: Column(
            children: [
              // ColoredBox(
              //   color: Colors.cyanAccent,
              //   child: SizedBox(
              //     width: 600,
              //     height: 300,),
              // ),
              const SizedBox(
                height: 100,
              ),
              TextField(
                controller: mobileNuberConroller,
                decoration: const InputDecoration(
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide.none
                        // borderSide: BorderSide(color: Colors.white24)
                        //borderSide: const BorderSide(),
                        ),
                    hintStyle: TextStyle(
                        color: Colors.grey, fontFamily: "WorkSansLight"),
                    filled: true,
                    hintText: 'Mobile'),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide.none
                        // borderSide: BorderSide(color: Colors.white24)
                        //borderSide: const BorderSide(),
                        ),
                    hintStyle: TextStyle(
                        color: Colors.grey, fontFamily: "WorkSansLight"),
                    filled: true,
                    hintText: 'Password'),
              ),
              const SizedBox(height: 28),
              SizedBox(
                height: 45,
                width: 170,
                child: ElevatedButton(
                  onPressed: () async {
                    String password = passwordController.text;
                    String mobile = mobileNuberConroller.text;

                    var url = Constant.LOGIN_URL;
                    Map<String, dynamic> bodyObject = {
                      Constant.MOBILE_NUMBER: mobile,
                      Constant.PASSWORD: password,
                    };
                    try {
                      String jsonString = await apiCall(url, bodyObject);
                      dynamic json = jsonDecode(jsonString);
                      status = json["success"];
                      message = json["message"];
                    } catch (e) {
                      // An error occurred
                    }
                    if (status) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Home()));
                    } else {
                      // Utils().showToast(message);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const Home()));
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF059176)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(child: const Text("click here to signup"),onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>  Registration("s")));
              },)
            ],
          ),
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
