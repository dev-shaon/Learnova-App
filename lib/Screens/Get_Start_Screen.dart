import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Personalizing course \naccording to your profile",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.sp,
                          ),
                        ),

                        SizedBox(height: 24.h),

                        Text(
                          "Current school",
                          style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                        ),

                        SizedBox(height: 8.h),

                        CustomTextfield(text: "Enter your school"),

                        SizedBox(height: 8.h),

                        Text(
                          "Elective Subject",
                          style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                        ),

                        SizedBox(height: 8.h),

                        CustomTextfield(text: "Enter your Elective Subject"),

                        SizedBox(height: 8.h),

                        Text(
                          "Current Grade",
                          style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                        ),

                        SizedBox(height: 8.h),

                        CustomGradeDropdown(),

                        SizedBox(height: 8.h),

                        Text(
                          "How Did you Hear about us?",
                          style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                        ),

                        SizedBox(height: 8.h),

                        Information(),

                        SizedBox(height: 24.h),

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

                        SizedBox(height: 20.h),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
