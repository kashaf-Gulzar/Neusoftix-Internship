import 'package:flutter/material.dart';
import 'package:my_first_project/ordersucces.dart';
import 'cartitem.dart';

class CartScreen extends StatefulWidget {
  final List<CartItem> items;

  const CartScreen({super.key, required this.items});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double total = widget.items.fold(
      0,
      (sum, item) => sum + (item.price * item.count),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "My Cart",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                final item = widget.items[index];
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          item.image,
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.items.removeAt(index);
                                    });
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),

                            Text(
                              "${item.quantity}, Price",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 6),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.remove_circle_outline_rounded,
                                        size: 30,
                                        color: Colors.green,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (item.count > 1) {
                                            item.count--;
                                          }
                                        });
                                      },
                                    ),
                                    Text(
                                      "${item.count}",
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        size: 30,
                                        color: Colors.green,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          item.count++;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                Text(
                                  "\$${(item.price * item.count).toStringAsFixed(2)}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: () {
                _showCheckoutSheet(context, total);
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(350, 67),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                "Go to Checkout   \$${total.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCheckoutSheet(BuildContext context, double total) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Checkout",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              ListTile(
                title: const Text("Delivery"),
                trailing: const Text("Select Method"),
                onTap: () {},
              ),
              const Divider(),

              ListTile(
                title: const Text("Payment"),
                trailing: const Icon(Icons.payment, color: Colors.blue),
                onTap: () {},
              ),
              const Divider(),

              ListTile(
                title: const Text("Promo Code"),
                trailing: const Text("Pick discount"),
                onTap: () {},
              ),
              const Divider(),

              ListTile(
                title: const Text("Total Cost"),
                trailing: Text(
                  "\$${total.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                "By placing an order you agree to our Terms and Conditions",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 15),

              FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Ordersucces(),
                    ),
                  );
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Place Order",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
