import 'package:flutter/material.dart';
import 'package:my_first_project/cartitem.dart';
import 'package:my_first_project/cartscreen.dart';
import 'package:my_first_project/loginpage.dart';
import 'package:my_first_project/loginscreen.dart';

class ProductDetail extends StatefulWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final String description;

  const ProductDetail({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    required this.description,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int quantityCount = 1; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.download, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(widget.image, height: 220, fit: BoxFit.contain),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.favorite_border,
                  color: Colors.grey, size: 28),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Text(
              widget.quantity,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (quantityCount > 1) quantityCount--;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.remove, size: 18),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "$quantityCount",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        quantityCount++;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.add, size: 18),
                    ),
                  ),
                ],
              ),
              Text(
                widget.price,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),

          const SizedBox(height: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Product Detail",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(widget.description,
                  style: const TextStyle(color: Colors.grey)),
            ],
          ),

          const SizedBox(height: 10),
          const Divider(),

          ListTile(
            title: const Text("Nutritions"),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text("100g"),
            ),
          ),

          const Divider(),

          ListTile(
            title: const Text("Review"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                  5,
                  (index) => const Icon(Icons.star,
                      color: Colors.orange, size: 18)),
            ),
          ),

          const Spacer(),

       FilledButton(
  onPressed: () {
    final cartItem = CartItem(
      image: widget.image,
      name: widget.name,
      quantity: widget.quantity,
      price: double.parse(widget.price.replaceAll("\$", "")), // "$4.99" -> 4.99
      count: quantityCount,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartScreen(items: [cartItem]),
      ),
    );
  },
  style: FilledButton.styleFrom(
    backgroundColor: Colors.green,
    padding: const EdgeInsets.all(12),
    minimumSize: const Size(350, 67),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
  child: const Text(
    'Add to Basket',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
),



          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
