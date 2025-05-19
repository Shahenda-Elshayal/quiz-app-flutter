import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/answers_review_screen.dart';

class QuizScreen extends StatefulWidget {
  final Map<String, dynamic> category;

  const QuizScreen({super.key, required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 1;
  int currentScore = 0;
  List<Map<String, dynamic>> selectedAnswers = [];
  List<String> skippedQuestions = [];

  void handleLastQuestionNavigation() {
    if (skippedQuestions.isNotEmpty) {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: const Text(
                'Some Questions Skipped',
                style: TextStyle(fontSize: 20, fontFamily: 'borel'),
              ),
              content: const Text(
                'You have skipped some questions. Do you want to continue or go back?',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              actions: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[700],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Back',
                    style: TextStyle(fontSize: 14, fontFamily: 'main'),
                  ),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 74, 135),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => AnswersReviewScreen(
                              answers: selectedAnswers,
                              score: currentScore,
                              totalQuestions:
                                  widget.category['questionsAndAnswers'].length,
                            ),
                      ),
                    );
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'main',
                    ),
                  ),
                ),
              ],
            ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (context) => AnswersReviewScreen(
                answers: selectedAnswers,
                score: currentScore,
                totalQuestions: widget.category['questionsAndAnswers'].length,
              ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQ =
        widget.category['questionsAndAnswers'][currentQuestion - 1];

    final isSkipped = skippedQuestions.contains(currentQ['question']);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.category['categoryName'],
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'borel',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: widget.category['categoryColor'],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 35, top: 2),
            child: Text(
              '$currentQuestion of ${widget.category['questionsAndAnswers'].length}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'main',
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    currentQ['question'],
                    style: const TextStyle(fontSize: 20, fontFamily: 'main'),
                  ),
                ),
                if (isSkipped)
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.warning,
                          color: Colors.orange,
                          size: 40,
                        ),
                      ),
                      // Text(
                      //   'Skipped',
                      //   style: TextStyle(
                      //     color: Colors.orange,
                      //     fontFamily: 'main',
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                    ],
                  ),
              ],
            ),

            const SizedBox(height: 16),

            for (int i = 0; i < currentQ['answers'].length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: ElevatedButton(
                  onPressed: () {
                    currentScore +=
                        (currentQ['answers'][i]['score'] as num).toInt();

                    selectedAnswers.add({
                      'question': currentQ['question'],
                      'selectedAnswer': currentQ['answers'][i]['answerText'],
                    });

                    setState(() {
                      skippedQuestions.remove(currentQ['question']);
                    });

                    if (currentQuestion ==
                        widget.category['questionsAndAnswers'].length) {
                      handleLastQuestionNavigation();
                    } else {
                      setState(() {
                        currentQuestion++;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.category['categoryColor'],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        currentQ['answers'][i]['answerText'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'main',
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back Button
                ElevatedButton(
                  onPressed:
                      currentQuestion > 1
                          ? () {
                            setState(() {
                              currentQuestion--;
                              if (selectedAnswers.length >= currentQuestion) {
                                selectedAnswers.removeLast();
                              }
                            });
                          }
                          : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[700],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  child: const Text('Back'),
                ),

                // Skip Button
                ElevatedButton(
                  onPressed: () {
                    selectedAnswers.add({
                      'question': currentQ['question'],
                      'selectedAnswer': 'Skipped',
                    });

                    if (!skippedQuestions.contains(currentQ['question'])) {
                      skippedQuestions.add(currentQ['question']);
                    }

                    if (currentQuestion ==
                        widget.category['questionsAndAnswers'].length) {
                      handleLastQuestionNavigation();
                    } else {
                      setState(() {
                        currentQuestion++;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 74, 135),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  child: const Text('Skip'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
