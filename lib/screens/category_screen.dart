import 'package:flutter/material.dart';
import '../data/app_data.dart';
import '../screens/quiz_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < categoriesList.length; i++)
            _categoryCard(context, categoriesList[i]),
        ],
      ),
    );
  }

  Widget _categoryCard(BuildContext context, Map<String, dynamic> category) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizScreen(category: category),
            ),
          );
        },
        child: Container(
          color: category['categoryColor'],
          height: 100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                category['categoryName'],
                style: const TextStyle(
                  fontSize: 26,
                  fontFamily: 'borel',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
