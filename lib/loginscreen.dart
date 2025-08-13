import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:my_first_project/phonenumberscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                width: 927.35,
                height: 400.31,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../android/assets/images/sign.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Get your groceries \nwith nectar',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Phonenumberscreen(),
                      ),
                    ),
                  },

                  child: AbsorbPointer(
                    child: IntlPhoneField(
                      decoration: const InputDecoration(
                        labelText: 'Mobile Number',
                        border: OutlineInputBorder(borderSide: BorderSide.none),
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

              Text(
                'Or connect with social media',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
             
GestureDetector(
  onTap: () {
    print("Continue with Google clicked");
  },
  child: Container(
    height: 67,
    width: 350,
    decoration: BoxDecoration(
      color: const Color(0xFF5383EC), 
      borderRadius: BorderRadius.circular(15),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.google,
          color: Colors.white,
          size: 30,
        ),
        const Spacer(), 
        const Text(
          'Continue with Google',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ),
  ),
),

const SizedBox(height: 30),


GestureDetector(
  onTap: () {
    print("Continue with Facebook clicked");
  },
  child: Container(
    height: 67,
    width: 350,
    decoration: BoxDecoration(
      color: const Color(0xFF1877F2), 
      borderRadius: BorderRadius.circular(15),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.facebook,
          color: Colors.white,
          size: 30,
        ),
        const Spacer(),
        const Text(
          'Continue with Facebook',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ),
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}
