import 'package:flutter/material.dart';
import 'package:my_first_project/beveragespage.dart';
import 'package:my_first_project/dairyeggs.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Products'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Store',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(8),
              children: [
                productCategory(context, 'Fresh Fruits & Vegetable',
                    '../android/assets/images/fruit.png', Colors.green.shade50, null),
                productCategory(context, 'Cooking Oil & Ghee',
                    '../android/assets/images/oil.png', Colors.orange.shade50, null),
                productCategory(context, 'Meat & Fish',
                    '../android/assets/images/fish.png', Colors.red.shade50, null),
                productCategory(context, 'Bakery & Snacks',
                    '../android/assets/images/bakery.png', Colors.purple.shade50, null),
                productCategory(context, 'Dairy & Eggs',
                    '../android/assets/images/egg.png', Colors.yellow.shade50, const Dairyeggs()),
                productCategory(context, 'Beverages',
                    '../android/assets/images/Beverages.png', Colors.blue.shade50, const BeveragesPage()),
                productCategory(context, 'Seafood',
                    '../android/assets/images/seafoodpreview.png', Colors.pinkAccent.shade100, null),
                productCategory(context, 'Junk Food',
                    '../android/assets/images/junkfoodpreview.png', Colors.deepPurple.shade100, null),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget productCategory(BuildContext context, String title, String imgPath, Color bgColor, Widget? page) {
    return InkWell(
      onTap: () {
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imgPath, height: 100),
            const SizedBox(height: 8),
            Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
