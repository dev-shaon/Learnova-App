import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnova_app/Screens/Account_Create_Screen.dart';
import 'package:learnova_app/Screens/Get_Start_Screen.dart';
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
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => Scaffold(
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
                  "Log In",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 16.h),

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
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: isStudent ? Colors.blue : Colors.grey,
                          ),
                        ),

                        SizedBox(height: 5.h),

                        Container(
                          height: 2.h,
                          width: 60.w,
                          color: isStudent ? Colors.blue : Colors.transparent,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 40.w),

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
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: isStudent ? Colors.grey : Colors.blue,
                          ),
                        ),

                        SizedBox(height: 5.h),

                        Container(
                          height: 2.h,
                          width: 60.w,
                          color: isStudent ? Colors.transparent : Colors.blue,
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
                          obscurePassword ? Icons.visibility_off_outlined : Icons.visibility,
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
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    CustomButton(
                      text: "Log In",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GetStartScreen(),
                          ),
                        );
                      },
                    ),

                    SizedBox(height: 16.h),

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 1.sw,
                        height: 56.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.white70,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Google.png"),
                            SizedBox(width: 10.w),
                            Text(
                              "Login with Google",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 16.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "New to Learnova? ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                            ),
                            children: [
                              TextSpan(
                                text: "Create an Account",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  decoration: TextDecoration.underline
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CreateScreen(),
                                      ),
                                    );
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
            ],
          ),
        ),
      ),
    );
  }
}
