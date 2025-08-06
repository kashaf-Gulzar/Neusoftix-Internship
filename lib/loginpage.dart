import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50), 
            Image.asset(
              '../android/assets/images/carrot.png',
              height: 300 ,color: Colors.red,
            ),
            const SizedBox(height: 20),
           
            
                const Text(
                  'Login',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                
                  ),
                ),
          const SizedBox(height: 20),

          
            const Text(
              'Enter your Email and Password',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
             const SizedBox(height: 80),

             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  
                  decoration: const InputDecoration(
                   
                    labelText: 'Email',
                    hintText: 'Enter your Email ',
                    border: OutlineInputBorder(),
                   
                  ),
                ),
              ),

              const SizedBox(height: 40),

              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    
                    labelText: 'Password',
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
           
          ],
        ),
      ),
    );
  }
}
