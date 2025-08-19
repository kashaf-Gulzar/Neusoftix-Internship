import 'package:flutter/material.dart';
import 'package:my_first_project/homescreen.dart';

class Ordersucces extends StatelessWidget {
  const Ordersucces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green.shade100,
            ),
            child: const Icon(Icons.check_circle,
                color: Colors.green, size: 100),
          ),

          const Spacer(),

          const Text(
            "Your Order has been accepted",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const SizedBox(height: 15),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Your items have been placed and are on their way to being processed",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(350, 67),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text("Track Order",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context, MaterialPageRoute(
                        builder: (context) => const Homescreen(),
                      ),);
                    },
                    child: const Text("Back to home",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
