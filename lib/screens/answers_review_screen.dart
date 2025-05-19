import 'package:flutter/material.dart';
import 'score_screen.dart';

class AnswersReviewScreen extends StatelessWidget {
  final List<Map<String, dynamic>> answers;
  final int score;
  final int totalQuestions;

  const AnswersReviewScreen({
    super.key,
    required this.answers,
    required this.score,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 74, 135),

        title: Text(
          'Review Your Answers',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'main',
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: answers.length,
                itemBuilder: (context, index) {
                  final answer = answers[index];
                  return Card(
                    child: ListTile(
                      title: Text(
                        answer['question'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Your Answer: ${answer['selectedAnswer']}',
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 74, 135),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ScoreScreen(
                          score: score,
                          numOfQuestions: totalQuestions,
                        ),
                  ),
                );
              },
              child: Text(
                'Confirm',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'main',
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
