import 'package:flutter/material.dart';

List<Map<String, dynamic>> categoriesList = [
  {
    'categoryName': 'Science quiz',
    'categoryColor': Colors.purple,
    "questionsAndAnswers": [
      {
        'question': 'What planet is known as the Red Planet?',
        'answers': [
          {"answerText": "Mars", "score": 1},
          {"answerText": "Venus", "score": 0},
          {"answerText": "Jupiter", "score": 0},
          {"answerText": "Saturn", "score": 0},
        ],
      },
      {
        'question': 'What is the chemical symbol for water?',
        'answers': [
          {"answerText": "H2O", "score": 1},
          {"answerText": "O2", "score": 0},
          {"answerText": "CO2", "score": 0},
          {"answerText": "NaCl", "score": 0},
        ],
      },
      {
        'question': 'How many bones are in the adult human body?',
        'answers': [
          {"answerText": "206", "score": 1},
          {"answerText": "201", "score": 0},
          {"answerText": "210", "score": 0},
          {"answerText": "205", "score": 0},
        ],
      },
      {
        'question': 'What gas do plants absorb from the atmosphere?',
        'answers': [
          {"answerText": "Carbon Dioxide", "score": 1},
          {"answerText": "Oxygen", "score": 0},
          {"answerText": "Nitrogen", "score": 0},
          {"answerText": "Hydrogen", "score": 0},
        ],
      },
      {
        'question': 'What is the boiling point of water at sea level?',
        'answers': [
          {"answerText": "100°C", "score": 1},
          {"answerText": "90°C", "score": 0},
          {"answerText": "80°C", "score": 0},
          {"answerText": "120°C", "score": 0},
        ],
      },
      {
        'question': 'Which organ pumps blood throughout the body?',
        'answers': [
          {"answerText": "Heart", "score": 1},
          {"answerText": "Liver", "score": 0},
          {"answerText": "Lungs", "score": 0},
          {"answerText": "Kidney", "score": 0},
        ],
      },
      {
        'question': 'What is the largest planet in our solar system?',
        'answers': [
          {"answerText": "Jupiter", "score": 1},
          {"answerText": "Earth", "score": 0},
          {"answerText": "Saturn", "score": 0},
          {"answerText": "Neptune", "score": 0},
        ],
      },
    ],
  },
  {
    'categoryName': 'Sports quiz',
    'categoryColor': Colors.green,
    "questionsAndAnswers": [
      {
        'question': 'What is the national sport of Canada?',
        'answers': [
          {"answerText": "Hockey", "score": 1},
          {"answerText": "Baseball", "score": 0},
          {"answerText": "Soccer", "score": 0},
          {"answerText": "Basketball", "score": 0},
        ],
      },
      {
        'question': 'Which country won the FIFA World Cup in 2018?',
        'answers': [
          {"answerText": "France", "score": 1},
          {"answerText": "Brazil", "score": 0},
          {"answerText": "Germany", "score": 0},
          {"answerText": "Argentina", "score": 0},
        ],
      },
      {
        'question': 'How many players are there in a baseball team?',
        'answers': [
          {"answerText": "9", "score": 1},
          {"answerText": "11", "score": 0},
          {"answerText": "7", "score": 0},
          {"answerText": "5", "score": 0},
        ],
      },
      {
        'question': 'In tennis, what is the term for a score of zero?',
        'answers': [
          {"answerText": "Love", "score": 1},
          {"answerText": "Zero", "score": 0},
          {"answerText": "Nil", "score": 0},
          {"answerText": "Blank", "score": 0},
        ],
      },
      {
        'question': 'Which sport uses the terms "birdie" and "eagle"?',
        'answers': [
          {"answerText": "Golf", "score": 1},
          {"answerText": "Badminton", "score": 0},
          {"answerText": "Tennis", "score": 0},
          {"answerText": "Cricket", "score": 0},
        ],
      },
      {
        'question': 'What is the maximum score in a single frame of snooker?',
        'answers': [
          {"answerText": "147", "score": 1},
          {"answerText": "100", "score": 0},
          {"answerText": "155", "score": 0},
          {"answerText": "120", "score": 0},
        ],
      },
      {
        'question':
            'Which country hosts the Grand Slam tennis tournament Wimbledon?',
        'answers': [
          {"answerText": "United Kingdom", "score": 1},
          {"answerText": "Australia", "score": 0},
          {"answerText": "France", "score": 0},
          {"answerText": "USA", "score": 0},
        ],
      },
    ],
  },
  {
    'categoryName': 'IQ quiz',
    'categoryColor': Colors.yellow,
    "questionsAndAnswers": [
      {
        'question':
            'Which number should come next in the series: 2, 4, 8, 16, ...?',
        'answers': [
          {"answerText": "32", "score": 1},
          {"answerText": "18", "score": 0},
          {"answerText": "24", "score": 0},
          {"answerText": "20", "score": 0},
        ],
      },
      {
        'question':
            'If you rearrange the letters "CIFAIPC" you would have the name of a(n):',
        'answers': [
          {"answerText": "City", "score": 0},
          {"answerText": "Animal", "score": 1},
          {"answerText": "Ocean", "score": 0},
          {"answerText": "Country", "score": 0},
        ],
      },
      {
        'question': 'Which one of the five is least like the other four?',
        'answers': [
          {"answerText": "Snake", "score": 1},
          {"answerText": "Dog", "score": 0},
          {"answerText": "Mouse", "score": 0},
          {"answerText": "Lion", "score": 0},
        ],
      },
      {
        'question':
            'What is the missing number in the sequence: 1, 1, 2, 3, 5, 8, ?',
        'answers': [
          {"answerText": "13", "score": 1},
          {"answerText": "10", "score": 0},
          {"answerText": "11", "score": 0},
          {"answerText": "15", "score": 0},
        ],
      },
      {
        'question': 'Which word does NOT belong with the others?',
        'answers': [
          {"answerText": "Bud", "score": 1},
          {"answerText": "Tulip", "score": 0},
          {"answerText": "Rose", "score": 0},
          {"answerText": "Daisy", "score": 0},
        ],
      },
      {
        'question': 'Which word does NOT belong with the others?',
        'answers': [
          {"answerText": "Bud", "score": 1},
          {"answerText": "Tulip", "score": 0},
          {"answerText": "Rose", "score": 0},
          {"answerText": "Daisy", "score": 0},
        ],
      },
      {
        'question': 'Which word does NOT belong with the others?',
        'answers': [
          {"answerText": "Bud", "score": 1},
          {"answerText": "Tulip", "score": 0},
          {"answerText": "Rose", "score": 0},
          {"answerText": "Daisy", "score": 0},
        ],
      },
      {
        'question': 'Which word does NOT belong with the others?',
        'answers': [
          {"answerText": "Bud", "score": 1},
          {"answerText": "Tulip", "score": 0},
          {"answerText": "Rose", "score": 0},
          {"answerText": "Daisy", "score": 0},
        ],
      },
      {
        'question':
            'Which is heavier: a pound of feathers or a pound of bricks?',
        'answers': [
          {"answerText": "They weigh the same", "score": 1},
          {"answerText": "Feathers", "score": 0},
          {"answerText": "Bricks", "score": 0},
          {"answerText": "Cannot be determined", "score": 0},
        ],
      },
      {
        'question':
            'If all Bloops are Razzies and all Razzies are Lazzies, are all Bloops definitely Lazzies?',
        'answers': [
          {"answerText": "Yes", "score": 1},
          {"answerText": "No", "score": 0},
          {"answerText": "Cannot be determined", "score": 0},
          {"answerText": "Only some", "score": 0},
        ],
      },
    ],
  },
  {
    'categoryName': 'Math quiz',
    'categoryColor': Colors.blue,
    "questionsAndAnswers": [
      {
        'question': 'What is 7 x 8?',
        'answers': [
          {"answerText": "56", "score": 1},
          {"answerText": "54", "score": 0},
          {"answerText": "58", "score": 0},
          {"answerText": "64", "score": 0},
        ],
      },
      {
        'question':
            'What is the value of π (pi) rounded to two decimal places?',
        'answers': [
          {"answerText": "3.14", "score": 1},
          {"answerText": "3.15", "score": 0},
          {"answerText": "3.13", "score": 0},
          {"answerText": "3.12", "score": 0},
        ],
      },
      {
        'question': 'What is the square root of 81?',
        'answers': [
          {"answerText": "9", "score": 1},
          {"answerText": "8", "score": 0},
          {"answerText": "7", "score": 0},
          {"answerText": "6", "score": 0},
        ],
      },
      {
        'question': 'What is 15% of 200?',
        'answers': [
          {"answerText": "30", "score": 1},
          {"answerText": "25", "score": 0},
          {"answerText": "35", "score": 0},
          {"answerText": "40", "score": 0},
        ],
      },
      {
        'question': 'What is the next prime number after 7?',
        'answers': [
          {"answerText": "11", "score": 1},
          {"answerText": "9", "score": 0},
          {"answerText": "11", "score": 0},
          {"answerText": "13", "score": 0},
        ],
      },
      {
        'question': 'What is the result of 12 ÷ 4?',
        'answers': [
          {"answerText": "3", "score": 1},
          {"answerText": "2", "score": 0},
          {"answerText": "4", "score": 0},
          {"answerText": "6", "score": 0},
        ],
      },
      {
        'question': 'What is the perimeter of a square with side length 5?',
        'answers': [
          {"answerText": "20", "score": 1},
          {"answerText": "10", "score": 0},
          {"answerText": "25", "score": 0},
          {"answerText": "15", "score": 0},
        ],
      },
    ],
  },
];
