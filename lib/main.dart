import 'package:flutter/material.dart';
import 'package:my_first_project/loginscreen.dart';
import 'package:my_first_project/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Positioned.fill(
            child: Image.asset(
              '../android/assets/images/welcome.jpg', 
              fit: BoxFit.cover,
            ),
          ),

          
          SafeArea(
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.end, 
              
              children: [
                Image.asset( '../android/assets/images/carrot.png', 
              width: 60,
              height: 60,),
                const SizedBox(height: 8), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome \n to our Store',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Get your groceries in as fast as one hour',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                GestureDetector(
  onTap: () {
    print("Get Started button clicked");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const LoginScreen();
    }));
  },
  child: ElevatedButton(
    onPressed: null, 
    style: ElevatedButton.styleFrom(
      backgroundColor:  Colors.green,
      padding: EdgeInsets.all(12),
      minimumSize: Size(353, 67),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: const Text(
      'Get Started',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
    ),
  ),
),
               ],
            ),
          ),
        ],
      ),
    );
  }
}