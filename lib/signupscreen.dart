import 'package:flutter/material.dart';
import 'package:my_first_project/loginpage.dart';
class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                '../android/assets/images/carrot.png',
                height: 200,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 30),

            const Text(
              'Signup',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Enter your credentials to continue',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 40),

            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your Username',
                border: OutlineInputBorder(),
              ),
            ),
             const SizedBox(height: 20),
             TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your Email',
                border: OutlineInputBorder(),
              ),
            ),

           
            const SizedBox(height: 20),

            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your Password',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),
             
            Text('By continuing you agree to our Terms of Service  \n and Privacy Policy.' ,style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            )),

            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Loginpage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.all(12),
                  minimumSize: const Size(400, 67),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an Account?",
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                  onPressed: () {
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loginpage(),
                    ),
                  );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
