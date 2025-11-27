import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnova_app/Screens/Get_Start_Screen.dart';
import 'package:learnova_app/Widgets/CustomButton.dart';
import 'package:learnova_app/Widgets/CustomTextField.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  bool isTeacher = true;
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/first_Image.png",
              width: 1.sw,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 29.h),

            Center(
              child: Text(
                "Create Account",
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 16.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTeacher = true;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        "Student",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: isTeacher ? Colors.blue : Colors.grey,
                        ),
                      ),

                      SizedBox(height: 5.h),

                      Container(
                        height: 2.h,
                        width: 110.w,
                        color: isTeacher ? Colors.blue : Colors.transparent,
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 40.w),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTeacher = false;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        "Teacher",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: isTeacher ? Colors.grey : Colors.blue,
                        ),
                      ),

                      SizedBox(height: 5.h),

                      Container(
                        height: 2.h,
                        width: 110.w,
                        color: isTeacher ? Colors.transparent : Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 24.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  CustomTextfield(text: "Enter your Name"),

                  SizedBox(height: 8.h),

                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  CustomTextfield(text: "Enter your email"),

                  SizedBox(height: 8.h),

                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 8.h),

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

                  SizedBox(height: 8.h),

                  Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  CustomTextfield(
                    text: "Confirm your Password",
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

                  SizedBox(height: 20.h),

                  CustomButton(
                    text: "Create Account",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GetStartScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 24.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    children: [
                      TextSpan(
                        text: "Log In",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
