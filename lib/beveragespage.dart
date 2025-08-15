import 'package:flutter/material.dart';

class BeveragesPage extends StatelessWidget {
  const BeveragesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beverages" ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          beverageItem("Diet Coke", "355ml, Price", "\$1.99", "../android/assets/images/DietCoke.png"),
          beverageItem("Sprite Can", "325ml, Price", "\$1.50", "../android/assets/images/Sprite.png"),
          beverageItem("Apple & Grape Juice", "2L, Price", "\$15.99", "../android/assets/images/Applejuice.png"),
          beverageItem("Orange Juice", "2L, Price", "\$15.99", "../android/assets/images/orangejuice.png"),
          beverageItem("Coca Cola Can", "325ml, Price", "\$4.99", "../android/assets/images/cocacola.png"),
          beverageItem("Pepsi Can", "330ml, Price", "\$4.99", "../android/assets/images/Pepsi.png"),
          beverageItem("Mirinda Can", "325ml, Price", "\$4.99", "../android/assets/images/mirinda.jpeg"),
          beverageItem("Mountain Dew Can", "330ml, Price", "\$4.99", "../android/assets/images/dew.jpeg"),
        ],
      ),
    );
  }

  Widget beverageItem(String name, String size, String price, String imgPath) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Center(child: Image.asset(imgPath, height: 80)),
          const SizedBox(height: 8),
          Text(name,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          const SizedBox(height: 4),
          Text(size, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
