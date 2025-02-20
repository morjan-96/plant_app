import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent[100],
        body: Stack(
          children: [
            Positioned(
              top: 80,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: const Icon(Icons.arrow_back, color: Colors.green),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  const Text(
                    "Creat your new account",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 60),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person, color: Colors.green),
                      hintText: "Full Name",
                      filled: true,
                      fillColor: Colors.green.shade100,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.mail, color: Colors.green),
                      hintText: "User@mail.com",
                      filled: true,
                      fillColor: Colors.green.shade100,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock, color: Colors.green),
                      suffixIcon:
                          const Icon(Icons.visibility, color: Colors.green),
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.green.shade100,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      onPressed: () {},
                      child: const Text("Login",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text("Remember Me"),
                        ],
                      ),
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 80),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text.rich(
                        TextSpan(
                          text: "Alreday have an account? ",
                          children: [
                            TextSpan(
                              text: "Log in",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
