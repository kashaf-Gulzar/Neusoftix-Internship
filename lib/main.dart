import 'package:flutter/material.dart';
import 'package:my_first_project/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../android/assets/images/welcome.jpg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              const Text(
                'Welcome \n to our Store',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Get your groceries in as fast as one hour',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all( 12),
                  minimumSize: Size(353, 67), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.5),
                  ),
                ),
                child: const Text('Get Started', style: TextStyle(color: Colors.white, fontSize:20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}