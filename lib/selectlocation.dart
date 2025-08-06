import 'package:flutter/material.dart';
import 'package:my_first_project/loginpage.dart';

class Selectlocation extends StatelessWidget {
  const Selectlocation({super.key});

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
       
      ),
      body: Center(
    
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
               Image.asset(
                  '../android/assets/images/location.png',
                  height: 300,
                ),
             
              const SizedBox(height: 10),
              const Text(
                'Select your Location',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Switch on your location to stay in tune with \nwhat's happening in your area",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 80),

             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.expand_more, color: Colors.black),
                    labelText: 'Your Zone',
                    hintText: 'Enter your zone (e.g. Banasree)',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.expand_more, color: Colors.black),
                    labelText: 'Your Area',
                    hintText: 'Type of your area',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
             ElevatedButton(
  onPressed: () {
    print("Submit button clicked");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const Loginpage();
    }));
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    padding: const EdgeInsets.all(12),
    minimumSize: const Size(400, 67),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
  child: Text(
    'Submit',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
),

            ],
          ),
        ),
      );
  
  }
}
