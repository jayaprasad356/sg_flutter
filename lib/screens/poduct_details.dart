import 'package:flutter/material.dart';
import 'package:smart_gram/Model/product_model.dart';

class ProductDetails extends StatefulWidget {
  final Product product;

  const ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 130,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.product.image),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Pupuk Urea",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "1kg/pohon/Tahun",
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(
                        "Specification Formula",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
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
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Description",
                      style: TextStyle(color: Color(0xFF059176))),
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
      ),
    );
  }
}
