import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:my_first_project/Otpcodescreen.dart';
class Phonenumberscreen extends StatelessWidget {
  const Phonenumberscreen({super.key});
   
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
              "Enter Your mobile number",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            IntlPhoneField(
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
              initialCountryCode: 'PK',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Color(0xFF53B175),
                child: const Icon(Icons.arrow_forward_ios, color: Colors.black,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Otpcodescreen(),
                    ),
                  );
                }
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
  