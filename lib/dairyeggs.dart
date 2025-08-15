import 'package:flutter/material.dart';

class Dairyeggs extends StatelessWidget {
  const Dairyeggs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dairy & Eggs"), centerTitle: true),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          eggItem(
            "Egg Chicken Red",
            "4Pcs, Price",
            "\$1.99",
            "../android/assets/images/eggchickenred.png",
          ),
          eggItem(
            "Egg Chicken White",
            "180g, Price",
            "\$1.50",
            "../android/assets/images/eggchickenwhite.png",
          ),
          eggItem(
            "Egg Pasta",
            "30gm, Price",
            "\$15.99",
            "../android/assets/images/eggpasta.png",
          ),
          eggItem(
            "Egg Noodles",
            "2L, Price",
            "\$15.99",
            "../android/assets/images/eggnoodles.png",
          ),
          eggItem(
            "Mayonnaise Eggless",
            "325ml, Price",
            "\$4.99",
            "../android/assets/images/Mayonnaise.png",
          ),
          eggItem(
            "Egg Noodles",
            "330ml, Price",
            "\$4.99",
            "../android/assets/images/noodle.png",
          ),
        ],
      ),
    );
  }

  Widget eggItem(String name, String size, String price, String imgPath) {
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
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(size, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
