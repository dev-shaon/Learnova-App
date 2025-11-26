import 'package:flutter/material.dart';
import 'package:learnova_app/Screens/Bottom%20Navbar%20Screens/Bottom_Navigation_screen.dart';
import 'package:learnova_app/Widgets/CustomButton.dart';
import 'package:learnova_app/Widgets/CustomTextField.dart';
import 'package:learnova_app/Widgets/Grade_Dropdown.dart';
import 'package:learnova_app/Widgets/Information.dart';

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
                height: 885,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
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
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        CustomTextfield(text: "Enter your school"),
                        SizedBox(height: 8),
                    
                        Text(
                          "Elective Subject",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        CustomTextfield(text: "Enter your Elective Subject"),
                        SizedBox(height: 8),
                    
                        Text(
                          "Current Grade",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        Stack(children: [
                          CustomGradeDropdown()
                          ]
                        ),
                    
                        SizedBox(height: 8),
                    
                        Text(
                          "How Did you Hear about us ?",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        
                        SizedBox(height: 8),
                         Stack(children: [
                          Information()
                          ]
                        ),
                        SizedBox(height: 300),
                        CustomButton(
                          text: "Get Started",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigationScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
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
