import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  String img;
  String mainText;
  String smallText;
  String newPrice;
  String oldPrice;
  String discount;
  double total = 0.0;
  final Function(String) onFruitPressed;

  MyContainer(this.img, this.mainText, this.smallText, this.newPrice,
      this.oldPrice, this.discount, this.onFruitPressed,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 180,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Color of the shadow
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 30,
              width: 60,
              decoration: const BoxDecoration(
                color: Color(0xFFF97B2A),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0), // Adjust the top-left radius as needed
                  bottomRight: Radius.circular(10.0), // Adjust the top-left radius as needed
                ),
              ),
              child: Center(
                child: Text(
                  discount,
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 1.0, left: 110),
            child: Icon(
              Icons.favorite_border,
              size: 22,
            ),
          ),
          Image.network(
            img,
            height: 100,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 90.0),
            child: Text(
              mainText,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 75.0, top: 6),
            child: Text(
              smallText,
              style: const TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  newPrice,
                  style: const TextStyle(fontSize: 15, color: Colors.green),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  oldPrice,
                  style: const TextStyle(
                      decoration: TextDecoration.lineThrough, // Add line-through decoration
                      decorationColor: Colors.grey, // Line-through color
                      decorationThickness: 2.0, // Line thickness
                      fontSize: 15,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48.0, top: 21),
                child: SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        onFruitPressed(mainText);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Button background color
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                      ), child: const Icon(Icons.add, size: 20, color: Colors.white),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
