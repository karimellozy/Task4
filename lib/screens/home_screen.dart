import 'package:flutter/material.dart';
import 'package:task4/components/my_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double total = 0.0;

  Map<String, int> fruitQuantities = {
    'Banana': 0,
    'Lemon': 0,
    'Orange': 0,
    'Grape': 0,
  };
  Map<String, double> fruitPrices = {
    'Banana': 2.05,
    'Lemon': 1.10,
    'Orange': 2.00,
    'Grape': 3.15,
  };

  void onFruitPressed(String fruitName) {
    setState(() {
      fruitQuantities[fruitName] = (fruitQuantities[fruitName] ?? 0) + 1; // Increment the quantity
      total += fruitPrices[fruitName] ?? 0.0; // Update the total based on the price
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Bakery",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text(
                "Fruits",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text(
                "Vegetables",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text(
                "Milk",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyContainer(
                  "https://i0.wp.com/agroarcade.com/wp-content/uploads/2020/06/Lemon-Whole-Qtr.jpg?resize=768%2C768&ssl=1",
                  "Lemon",
                  "Bergamo Italy",
                  "\$1.10",
                  "\$2",
                  "50% off",
                  onFruitPressed),
              MyContainer(
                  "https://assets-us-01.kc-usercontent.com/3e01c88d-6d32-0086-9f07-7574b3104890/43ca2ac8-6e5f-4d16-86a8-55800b90927a/LF09-bananas-and-IBS-thumb.webp",
                  "Banana",
                  "Cattier Italiano",
                  "\$2.05",
                  "\$3",
                  "33% off",
                  onFruitPressed),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyContainer(
                  "https://www.cartly.ca/cdn/shop/products/image_22f97cea-21d2-4d5b-95c9-1e17208ed84e.jpg?v=1647206562",
                  "Grape",
                  "Cattier Italiano",
                  "\$3.15",
                  "\$4",
                  "25% off",
                  onFruitPressed),
              MyContainer(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Orange-Fruit-Pieces.jpg/1200px-Orange-Fruit-Pieces.jpg",
                  "Orange",
                  "Cattier Italiano",
                  "\$2",
                  "\$3.10",
                  "33% off",
                  onFruitPressed),
            ],
          ),
          Container(
            height: 50,
            width: 390,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Total:",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    total.toStringAsFixed(2),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 115.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFF037FF5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        // Adjust the top-left radius as needed
                        bottomRight: Radius.circular(
                            10.0), // Adjust the top-left radius as needed
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Cart",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
