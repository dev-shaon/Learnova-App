import 'package:flutter/material.dart';
import 'package:learnova_app/Screens/Bottom Navbar Screens/Home_Screen.dart';
import 'package:learnova_app/Screens/Bottom Navbar Screens/Profile_Screen.dart';
import 'package:learnova_app/Screens/Bottom Navbar Screens/Video_Screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    VideoScreen(),
    Center(child: Text("Screen 3")),
    Center(child: Text("Screen 4")),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,

        items: [
          _navItem(Icons.home, 0),
          _navItem(Icons.smart_display, 1),
          _navItem(Icons.lightbulb, 2),
          _navItem(Icons.import_contacts, 3),
          _navItem(Icons.person, 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem _navItem(IconData icon, int index) {
    return BottomNavigationBarItem(
      label: "",
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: currentIndex == index ? Colors.blue : Colors.grey,
          ),

          
          SizedBox(height: 4),

          
          Visibility(
            visible: currentIndex == index,
            child: Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
