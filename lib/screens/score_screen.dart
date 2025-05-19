import 'package:flutter/material.dart';
import 'package:quiz_app/screens/splash_screen.dart';
import 'package:quiz_app/screens/category_screen.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int numOfQuestions;

  const ScoreScreen({
    super.key,
    required this.score,
    required this.numOfQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz Results',
          style: TextStyle(color: Colors.white, fontFamily: 'main'),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 74, 135),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Your Score: $score',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'main',
                color: const Color.fromARGB(255, 0, 74, 135),
              ),
            ),
            Text(
              'Number of Questions: $numOfQuestions',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'main',
                color: const Color.fromARGB(255, 0, 74, 135),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 74, 135),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CategoryScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Play Again',
                    style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SplashScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'log out',
                    style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 74, 135),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
