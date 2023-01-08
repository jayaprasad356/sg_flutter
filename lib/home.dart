import 'package:flutter/material.dart';
import 'package:smart_gram/cart.dart';
import 'package:smart_gram/screens/consultant_page.dart';
import 'package:smart_gram/screens/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selctedIndex = 0;
  final screens = [
    const HomePage(),
   const ConsultantPage(),

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
                onPressed: () {},
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
