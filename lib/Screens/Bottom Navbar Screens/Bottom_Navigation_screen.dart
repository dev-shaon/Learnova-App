import 'package:flutter/material.dart';
import 'package:learnova_app/Widgets/CustomButton.dart';
import 'package:learnova_app/Screens/Bottom Navbar Screens/Home_Screen.dart';
import 'package:learnova_app/Screens/Bottom Navbar Screens/Profile_Screen.dart';
import 'package:learnova_app/Screens/Bottom Navbar Screens/Video_Screen.dart';
import 'package:learnova_app/Screens/Bottom%20Navbar%20Screens/question_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;
  bool showResult = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: showResult ? 3 : currentIndex,
        children: [
          HomeScreen(),
          VideoScreen(),
          Understanding(
            goToResult: () {
              setState(() {
                showResult = true;
              });
            },
          ),
          ResultScreen(
            onContinue: () {
              setState(() {
                showResult = false;
                currentIndex = 0;
              });
            },
          ),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            if (index != 2) showResult = false;
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
          Icon(icon, color: currentIndex == index ? Colors.blue : Colors.grey),
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

//ResultScreen
class ResultScreen extends StatelessWidget {
  final VoidCallback onContinue;
  const ResultScreen({super.key, required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
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

                SizedBox(height: 24),

                Text(
                  "Well done! Here is the Explanation",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 24),
                _categoryTag(),

                SizedBox(height: 40),
                _questionContainer(),
                
                SizedBox(height: 24),
                _answerCard(),
                
                SizedBox(height: 32),
                CustomButton(text: "Continue", onPressed: onContinue),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _answerCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 229, 243, 252),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
              color: Color(0xFFBEE1FA),
              borderRadius: BorderRadius.circular(14),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Timid (膽小)",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "C",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 12),

          Text(
            "Explanation",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 12),

          Text(
            "Timid 的意思是缺乏勇氣或信心；容易受到驚嚇，這適合描述一隻狗在其他狗的周圍表現出的從屬或緊張的行為。",
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Color(0xff545454),
            ),
          ),

          SizedBox(height: 12),

          _bulletPoint(
            "Scared (害怕) 和 Frightening (嚇人) 表示狗會讓其他人或動物感到恐懼，這與狗對其他狗的反應不符。",
          ),
          _bulletPoint("Concerned (擔憂) 通常不用來描述狗與其他狗相處時感到壓力的反應।"),
        ],
      ),
    );
  }

  Widget _bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6.0, right: 8.0),
            child: Icon(Icons.circle, size: 6, color: Color(0xff545454)),
          ),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: 16, height: 1.5)),
          ),
        ],
      ),
    );
  }
}

Widget _categoryTag() {
  return Container(
    height: 38,
    width: 120,
    decoration: BoxDecoration(
      color: Color(0xFFDBF1FF),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Text(
        "Vocabulary",
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

Widget _questionContainer() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xFFF6FAFF),
      borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.all(12),
    child: Text(
      "Q. My dog is a little __ , especially when around other dogs.",
      style: TextStyle(fontSize: 18),
    ),
  );
}
