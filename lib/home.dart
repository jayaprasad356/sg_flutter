import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_gram/cart.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selctedIndex = 0;
  final screens = [
    Stack(
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
                          prefixIcon:
                              Icon(Icons.search, color: Color(0xFF059176)),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide.none),
                          hintStyle: TextStyle(
                              color: Colors.grey, fontFamily: "WorkSansLight"),
                          filled: true,
                          hintText: 'Search Product'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
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
                          child: Image.asset("assets/images/home_image.png"),
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
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )),
                    Container(
                        padding: const EdgeInsets.only(right: 12, top: 33),
                        child: const Text(
                          "view all",
                          style:
                              TextStyle(color: Color(0xFF059176), fontSize: 14),
                        ))
                  ],
                ),
                SizedBox(
                  height: 111,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, position) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/home_image.png",
                                    height: 80),
                                const Text("paddy")
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
    ),
    SizedBox(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
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
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home_image.png"),
                                    fit: BoxFit.fill),
                              ),
                            )),
                        const Text(
                          "paddy",
                          style: TextStyle(color: Colors.black38),
                        ),
                        const Text("₹ 500")
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Name",
                            style: TextStyle(color: Colors.black),
                          ),
                          const Text(
                            "Role",
                            style: TextStyle(color: Colors.black38),
                          ),
                          const Text(
                            "Experience",
                            style: TextStyle(color: Color(0xFF059176)),
                          ),
                          ElevatedButton(
                            onPressed: () {},
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
    ),
    SizedBox(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          20,
          (index) => Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 80,
                    width: 80,
                    child: Container(
                      width: 60,
                      height: 80,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/home_image.png"),
                        ),
                      ),
                    )),
                const Text(
                  "paddy",
                ),
                const Text(
                  "Urea",
                  style: TextStyle(color: Colors.black38),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF059176)),
                  ),
                  child: const Text("View"),
                )
              ],
            ),
          ),
        ),
      ),
    ),
    Container(
      height: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 120,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 130,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/product.png"),
                          fit: BoxFit.fill),
                    ),
                  )),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Pupuk Urea",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "1kg/pohon/Tahun",
                      style: TextStyle(color: Colors.black38),
                    ),
                    const Text(
                      "Specification Formula",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "15: 15: 15",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 18, right: 18, top: 20),
            height: 2,
            width: double.infinity,
            child: const ColoredBox(
              color: Colors.black38,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Description", style: TextStyle(color: Color(0xFF059176))),
                Text("Manufacture"),
                Text("Details"),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: const Text(
                  "Pupuk  Urea is a Source of  Nitrogen, as an essential nutrient cruciial for Crop growth and Urea is the most important nitrogenous fertilizer in the Country because of its high N contentThe chemical Name of UREA is carbamide, the diamide of Carbonic acid. Its Formula is HNCONH2 ",
                  style: TextStyle(color: Colors.grey))),
          const Spacer(),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 18, right: 18, bottom: 10),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {

                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF059176)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                child: const Text("Add to cart"),
              ),
            ),
          ),
        ],
      ),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selctedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hi, Prasad",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              Text(
                "Welcome,Gram Mitra",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              )
            ],
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF059176),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
          ],
        ),
        body: screens[_selctedIndex],
        bottomNavigationBar: Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/Home.png")),
                    label: 'Home',
                    backgroundColor: Color(0xFF059176),
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/menu.png")),
                    label: 'Consultant',
                    backgroundColor: Color(0xFF059176),
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/note.png")),
                    label: 'Fintech',
                    backgroundColor: Color(0xFF059176),
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/user.png")),
                    label: 'Profile',
                    backgroundColor: Color(0xFF059176),
                  ),
                ],
                currentIndex: _selctedIndex,
                selectedItemColor: Colors.white,
                onTap: _onItemTapped,
              ),
            )));
  }

  void _navigateToNextPage() {
    // push a new route to the navigation stack
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CartScreen()));
  }
}
