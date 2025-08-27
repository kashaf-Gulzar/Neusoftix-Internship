import 'package:flutter/material.dart';
import 'package:my_first_project/accountscreen.dart';
import 'package:my_first_project/cartitem.dart';
import 'package:my_first_project/cartscreen.dart';
import 'package:my_first_project/explorescreen.dart';
import 'package:my_first_project/favouritescreen.dart';
import 'package:my_first_project/productdetail.dart';
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
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
                        Icon(Icons.location_on, color: Colors.black, size: 20),
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

                const SizedBox(height: 12),

                TextField(
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

                const SizedBox(height: 15),

                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 230, 203),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                  '../android/assets/images/fruit.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              const Text(
                                "Fresh Vegetables",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "Get Up To 40% OFF",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Container(
                                    height: 6,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                  ),
                                  const SizedBox(width: 3),
                                  Container(
                                    height: 6,
                                    width: 6,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Container(
                                    height: 6,
                                    width: 6,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                sectionHeader("Exclusive Offer"),
                productGrid([
                  productCard(
                    "../android/assets/images/Apple.png",
                    "Fresh Apples",
                    "1kg",
                    "\$4.99",
                    "Apples are nutritious. Apples may be good for weight loss...",
                    context,
                  ),
                  productCard(
                    "../android/assets/images/banana.jpeg",
                    "Bananas",
                    "1 Dozen",
                    "\$2.99",
                    "Bananas are nutritious, potassium-rich...",
                    context,
                  ),
                ]),

                sectionHeader("Best Selling"),
                productGrid([
                  productCard(
                    "../android/assets/images/tomato.png",
                    "Tomatoes",
                    "1kg",
                    "\$3.49",
                    "Tomatoes are versatile fruits...",
                    context,
                  ),
                  productCard(
                    "../android/assets/images/Ginger.png",
                    "Ginger",
                    "1kg",
                    "\$9.99",
                    "Ginger is a flowering plant's rhizome...",
                    context,
                  ),
                ]),

                sectionHeader("Groceries"),
                Row(
                  children: [
                    Expanded(
                      child: groceryCard(
                        '../android/assets/images/pulses.png',
                        "Pulses",
                        Colors.orange.shade50,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: groceryCard(
                        '../android/assets/images/Rice.png',
                        "Rice",
                        Colors.green.shade50,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                productGrid([
                  productCard(
                    "../android/assets/images/Meat.png",
                    "Beef",
                    "1kg",
                    "\$4.99",
                    "Meat products are defined as edible animal tissues...",
                    context,
                  ),
                  productCard(
                    "../android/assets/images/Chicken.png",
                    "Chicken",
                    "1 Kg",
                    "\$2.99",
                    "Chicken products are versatile and nutritious...",
                    context,
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  selectedItemColor: Colors.green,
  unselectedItemColor: Colors.grey,
  onTap: (index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ExploreScreen()),
      );
    } else if (index == 2) {
      Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => CartScreen(items: CartItem.favourites),
  ),
);

    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const FavouriteScreen()), 
      );
    } else if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AccountScreen()),
      );
    }
  },
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

Widget sectionHeader(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Text("See all", style: TextStyle(color: Colors.green)),
      ],
    ),
  );
}

Widget productGrid(List<Widget> products) {
  return GridView.count(
    crossAxisCount: 2,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    childAspectRatio: 0.75,
    children: products,
  );
}

Widget groceryCard(String image, String title, Color bgColor) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        Image.asset(image, height: 50, width: 50, fit: BoxFit.cover),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    ),
  );
}

Widget productCard(
  String image,
  String name,
  String quantity,
  String price,
  String description,
  BuildContext context,
) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ProductDetail(
            image: image,
            name: name,
            quantity: quantity,
            price: price,
            description: description,
          ),
        ),
      );
    },
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Center(child: Image.asset(image))),
            const SizedBox(height: 5),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Text(
              quantity,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:
                      const Icon(Icons.add, color: Colors.white, size: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
