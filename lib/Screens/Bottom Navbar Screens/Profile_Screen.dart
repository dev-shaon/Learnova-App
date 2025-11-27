import 'package:flutter/material.dart';
import 'package:learnova_app/Screens/Bottom%20Navbar%20Screens/Bottom_Navigation_screen.dart';
import 'package:learnova_app/Widgets/Course_Widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationScreen())),
                        icon: Icon(Icons.arrow_circle_left_outlined, size: 32),
                      ),
                      Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.settings_outlined, size: 28),
                ],
              ),

              SizedBox(height: 12),

              Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/profile.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),

                   SizedBox(height: 8),

                    Text(
                      "Jessica Roy",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Joined since - Jun 2024",
                      style: TextStyle(color: Colors.grey),
                    ),

                    SizedBox(height: 16),

                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 227, 242, 250),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            StatusItem(count: "05", label: "In progress"),

                            VerticalDivider(
                              color: Colors.black,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),


                            StatusItem(count: "01", label: "Completed"),
                            
                            VerticalDivider(
                              color: Colors.black,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),

                            StatusItem(count: "05", label: "Following"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Text(
                "My courses",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 16),

              CourseCard(),

              SizedBox(height: 16),
              
              CourseCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusItem extends StatelessWidget {
  final String count;
  final String label;

  const StatusItem({super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 3),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
