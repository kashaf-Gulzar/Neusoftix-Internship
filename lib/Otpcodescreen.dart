import 'package:flutter/material.dart';
import 'package:my_first_project/selectlocation.dart';

class Otpcodescreen extends StatelessWidget {
  const Otpcodescreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Enter Your 4-digit code",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              maxLength: 4,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.left,
              decoration: const InputDecoration(
                hintText: '- - - -',
                counterText: '',
                border: UnderlineInputBorder(),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                   
                  },
                  child: const Text(
                    "Resend Code",
                    style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold ),
                  ),
                ),
                const SizedBox(width: 8),
                FloatingActionButton(
                  backgroundColor: const Color(0xFF53B175),
                  child: const Icon(Icons.arrow_forward_ios, color: Colors.black),
                  onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Selectlocation(),
                    ),
                  );
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
