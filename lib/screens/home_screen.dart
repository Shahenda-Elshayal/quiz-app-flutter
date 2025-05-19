import 'package:flutter/material.dart';
import '../screens/category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _usernameController = TextEditingController();
  bool _rememberMe = false;

  String? _validateUsername(String username) {
    final RegExp regex = RegExp(r'^[A-Z][a-zA-Z0-9]{2,}$');
    final bool containsNumber = username.contains(RegExp(r'\d'));

    if (!regex.hasMatch(username) || !containsNumber) {
      return 'Username must start with a capital, be at least 3 characters, and include a number';
    }

    return null;
  }

  void _onLoginPressed() {
    String username = _usernameController.text.trim();
    String? validationMessage = _validateUsername(username);

    if (validationMessage != null) {
      showDialog(
        context: context,
        builder:
            (ctx) => AlertDialog(
              title: const Text("Invalid Username"),
              content: Text(validationMessage),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: const Text("OK"),
                ),
              ],
            ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CategoryScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                color: const Color.fromARGB(255, 0, 74, 135),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Image.asset('../assets/images/n.webp', width: 160),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "main",
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            controller: _usernameController,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            decoration: const InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Color.fromARGB(255, 187, 187, 187),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 134, 134, 134),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 187, 187, 187),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 0, 108, 197),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const TextField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Color.fromARGB(255, 187, 187, 187),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 134, 134, 134),
                                size: 20,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: Color.fromARGB(255, 134, 134, 134),
                                size: 20,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 187, 187, 187),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 0, 108, 197),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text('New to quizz app?'),
                              const SizedBox(width: 4),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 108, 197),
                                    fontFamily: "main",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: ElevatedButton(
                              onPressed: _onLoginPressed,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  0,
                                  108,
                                  197,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "main",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Icon(
                            Icons.fingerprint,
                            size: 50,
                            color: Color.fromARGB(255, 0, 108, 197),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Use Touch ID',
                            style: TextStyle(
                              color: Color.fromARGB(255, 135, 135, 135),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Checkbox(
                                value: _rememberMe,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value ?? false;
                                  });
                                },
                                fillColor: WidgetStateProperty.all(
                                  _rememberMe
                                      ? const Color.fromARGB(255, 0, 108, 197)
                                      : Colors.white,
                                ),
                              ),

                              const Text('Remember me'),
                              const Spacer(),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 108, 197),
                                    fontFamily: "main",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
