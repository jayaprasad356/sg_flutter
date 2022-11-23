import 'package:flutter/material.dart';
import 'package:smart_gram/registration.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
  @override
  Widget build(BuildContext context) {
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
              const TextField(
                decoration: InputDecoration(
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
              const TextField(
                decoration: InputDecoration(
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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => registration("hj")));
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
                height: 3,
              ),
              const Text("click here to signup")
            ],
          ),
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
