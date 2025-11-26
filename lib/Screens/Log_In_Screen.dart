import 'package:flutter/material.dart';
import 'package:learnova_app/Widgets/CustomButton.dart';
import 'package:learnova_app/Widgets/CustomTextField.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isStudent = true;
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage("assets/images/first_Image.png")),
            SizedBox(height: 29),
            Center(
              child: Text(
                "Log In",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isStudent = true;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        "Student",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isStudent ? Colors.blue : Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 2,
                        width: 60,
                        color: isStudent ? Colors.blue : Colors.transparent,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isStudent = false;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        "Teacher",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isStudent ? Colors.grey : Colors.blue,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 2,
                        width: 60,
                        color: isStudent ? Colors.transparent : Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomTextfield(text: "Enter your email"),
                  SizedBox(height: 8),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomTextfield(
                    text: "Enter your Password",
                    obscureText: obscurePassword,
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                        color: const Color.fromARGB(255, 115, 114, 114),
                      ),
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
                  CustomButton(text: "Log In", onPressed: (){})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
