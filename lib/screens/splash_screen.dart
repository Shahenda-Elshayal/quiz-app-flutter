import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('../assets/images/new.jpg', fit: BoxFit.cover),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color.fromARGB(480, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Image.asset('../assets/images/logo.webp', width: 200),
                  Text(
                    'ITI Quiz App',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontFamily: "borel",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'We Are Creative, enjoy our app',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "main",
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Spacer(),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 108, 197),
                      ),
                      child: Text(
                        'Start',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "main",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
