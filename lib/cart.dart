import 'package:flutter/material.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF059176),
        toolbarHeight: 100,
        leading: const Padding(
          padding: EdgeInsets.only(top: 50),
          child: Icon(Icons.chevron_left),
        ),
        title: Row(
          children: const [
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: EdgeInsets.only(top: 50,left: 0),
              child: Text("Cart"),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}

