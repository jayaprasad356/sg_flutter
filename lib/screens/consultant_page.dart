import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:smart_gram/Model/doctor_detail.dart';
import 'package:smart_gram/utils.dart';
import '../Constant.dart';
import '../Services/apiCall.dart';

class ConsultantPage extends StatefulWidget {
  const ConsultantPage({Key? key}) : super(key: key);

  @override
  State<ConsultantPage> createState() => _ConsultantPageState();
}

class _ConsultantPageState extends State<ConsultantPage> {
  late List<DoctorDetails> users = [];

  Future<List<DoctorDetails>> _getUser() async {
    var response = await dataCall(Constant.DOCTOR_LIST_URL);

    String jsonsDataString = response.toString();
    final jsonsData = jsonDecode(jsonsDataString);

    for (var u in jsonsData['data']) {
      final name = u['name'];
      final image = u["image"];
      final experience = u['experience'];
      final fees = u["fees"];
      final role = u["role"];
      DoctorDetails user = DoctorDetails(name, image, experience, fees, role);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getUser(),
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
          return SizedBox(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, position) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 120,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                  height: 83,
                                  child: Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              users[position].image),
                                          fit: BoxFit.fill),
                                    ),
                                  )),
                              const Text(
                                "TotalFees",
                                style: TextStyle(color: Colors.black38),
                              ),
                              Text(users[position].fees)
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  users[position].name,
                                  style: const TextStyle(color: Colors.black),
                                ),
                                Text(
                                  users[position].role,
                                  style: const TextStyle(color: Colors.black38),
                                ),
                                Text(
                                  users[position].experience,
                                  style: const TextStyle(color: Color(0xFF059176)),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    
                                    Utils().showToast(users[position].name);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xFF059176)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)))),
                                  child: const Text("Make an Appoinment"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
