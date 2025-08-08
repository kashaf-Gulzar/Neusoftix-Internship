import 'package:flutter/material.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
  padding: const EdgeInsets.all(12.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        '../android/assets/images/carrot.png',
        color: Colors.red,
        width: 50,
        height: 50,
      ),
      const SizedBox(height: 8),

      
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.location_on,
            color: Colors.black,
            size: 20,
          ),
          SizedBox(width: 4),
          Text(
            "Dhaka, Banassre",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ],
  ),
),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search Store",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

             
             Padding(
  padding: const EdgeInsets.symmetric(horizontal: 12.0),
  child: Image.asset(
    '../android/assets/images/fruit.png', 
    fit: BoxFit.cover,
  ),
),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Exclusive Offer",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

                    Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.75,
                  children: [
                    productCard("../android/assets/images/Apple.png", "Fresh Apples",
                        "1kg", "\$4.99"),
                    productCard("../android/assets/images/banana.jpeg", "Bananas", "1 Dozen",
                        "\$2.99"),
                   
                  ],
                ),
              ),
               const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Best Selling",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.75,
                  children: [
                    
                    productCard("../android/assets/images/tomato.png", "Tomatoes", "1kg",
                        "\$3.49"),
                    productCard("../android/assets/images/Ginger.png", "Ginger", "1kg",
                        "\$9.99"),
                  ],
                ),
              ),
               const SizedBox(height: 10),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Groceries",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
             const SizedBox(height: 10),
        Padding(
  padding: const EdgeInsets.symmetric(horizontal: 12.0),
  child: Row(
    children: [
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.orange.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset(
                '../android/assets/images/pulses.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              const Text(
                "Pulses",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset(
                '../android/assets/images/Rice.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              const Text(
                "Rice",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),

              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.75,
                  children: [
                    productCard("../android/assets/images/Meat.png", "Beef",
                        "1kg", "\$4.99"),
                    productCard("../android/assets/images/Chicken.png", "Chicken", "1 Kg",
                        "\$2.99"),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Account'),
          
        ],
      ),
    );
  }
}
Widget categoryCard(String image, String title) {
  return Padding(
    padding: const EdgeInsets.only(right: 12.0),
    child: Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(image),
        ),
        const SizedBox(height: 5),
        Text(title),
      ],
    ),
  );
}

Widget productCard(String image, String name, String quantity, String price) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(image),
            ),
          ),
          const SizedBox(height: 5),
          Text(name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          Text(quantity, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price,
                  style: const TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 20),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
