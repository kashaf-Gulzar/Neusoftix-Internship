import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:my_first_project/phonenumberscreen.dart'; 

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -90.84,
            right: -300.66,
            child: Transform.rotate(
              angle: 220.29 * (pi / 180), 
              child: Container(
                width: 927.35,
                height: 400.31,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../android/assets/images/sign.jpg'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          
         
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
              const SizedBox(height: 30),
             const Padding(
  padding: EdgeInsets.symmetric(horizontal: 40),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Text(
      'Get your groceries \n with nectar',
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),

  const SizedBox(height: 30),

   Padding(
  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
  child:GestureDetector(
onTap: () => {
  Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Phonenumberscreen()),
      ),
},
  
  child: AbsorbPointer(
  child: IntlPhoneField(
    decoration: const InputDecoration(
      labelText: 'Mobile Number',
      border: OutlineInputBorder(
        borderSide: BorderSide(),
      ),
    ),
    initialCountryCode: 'PK', 
    keyboardType: TextInputType.number,
    onChanged: (phone) {
      print(phone.completeNumber); 
    },
  ),
  ),
),
   ),
              const SizedBox(height: 30),

              Text('Or connect with social media', style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: () {}, 
            icon: Padding(
    padding: EdgeInsets.only(right: 30), 
    child: Icon(FontAwesomeIcons.google, color: Colors.white, size: 30),
  ), 
            label: Text('Continue with Google', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(400, 67),
                    padding: EdgeInsets.all(12),
              backgroundColor:  const Color(0xFF5383EC),
              shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
              )
              
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: () {}, 
            icon: Padding(
    padding: EdgeInsets.only(right: 30), 
    child: Icon(FontAwesomeIcons.facebook, color: Colors.white, size: 30),
  ),
            label: Text('Continue with Facebook', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(400, 67),
                    padding: EdgeInsets.all(12),
              backgroundColor:  const Color(0xFF4A66AC),
              shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
              )
              
            ),
          ),
            ],
          ),
        ],
      ),
    );
  }
}