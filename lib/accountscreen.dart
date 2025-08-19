import 'package:flutter/material.dart';
import 'package:my_first_project/cartscreen.dart';
import 'package:my_first_project/explorescreen.dart';
import 'package:my_first_project/loginscreen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
    onPressed: () {
      Navigator.of(context).pop();
    },
  ),
  backgroundColor: Colors.white,
  elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Row(
              children: [
                const SizedBox(width: 20),
                const CircleAvatar(
                  radius: 35,
                  
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Afsar Hossen",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.edit, size: 16, color: Colors.green),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "lmshuvo97@gmail.com",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),

            const SizedBox(height: 30),

            Expanded(
              child: ListView(
                children: [
                  _buildListTile(Icons.shopping_bag_outlined, "Orders"),
                  _buildListTile(Icons.person_outline, "My Details"),
                  _buildListTile(Icons.location_on_outlined, "Delivery Address"),
                  _buildListTile(Icons.payment_outlined, "Payment Methods"),
                  _buildListTile(Icons.card_giftcard_outlined, "Promo Card"),
                  _buildListTile(Icons.notifications_none, "Notifications"),
                  _buildListTile(Icons.help_outline, "Help"),
                  _buildListTile(Icons.info_outline, "About"),
                  const SizedBox(height: 20),

                  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: FilledButton.icon(
    style: FilledButton.styleFrom(
      backgroundColor: Colors.green.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      elevation: 0,
    ),
    onPressed: () {},
    icon: const Icon(
      Icons.logout,
      color: Colors.green,
      size: 20,
    ),
    
    label: const Text(
      "Log Out",
      style: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  ),
),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
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
        MaterialPageRoute(builder: (context) => const CartScreen(items: [])), 
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()), 
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

  Widget _buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
