import 'package:flutter/material.dart';
import 'package:learnova_app/Widgets/CustomButton.dart';
import 'package:learnova_app/Widgets/CustomTextField.dart';

class GetStartScreen extends StatefulWidget {
  const GetStartScreen({super.key});

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 875,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personalizing course \naccording to your profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "current school",
                        style: TextStyle(
                          fontSize: 16,

                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 8),
                      CustomTextfield(text: "Enter your school"),
                      SizedBox(height: 8),
                      Text(
                        "Elective Subject",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 8),
                      CustomTextfield(text: "Enter your Elective Subject"),
                      SizedBox(height: 8),
                      SizedBox(height: 326,),
                      CustomButton(text: "Get Started", onPressed: (){})
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
