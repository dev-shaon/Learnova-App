import 'package:flutter/material.dart';
import 'package:learnova_app/Screens/Bottom%20Navbar%20Screens/Bottom_Navigation_screen.dart';
import 'package:learnova_app/Widgets/CustomButton.dart';

class Understanding extends StatefulWidget {
  final VoidCallback goToResult;
  const Understanding({super.key, required this.goToResult});

  @override
  State<Understanding> createState() => _UnderstandingState();
}

class _UnderstandingState extends State<Understanding> {
  List<String> options = ["Scared", "Frightening", "Timid", "Concerned"];
  List<String> alphabet = ["A", "B", "C", "D"];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 24),
              
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationScreen())),
                    icon: Icon(Icons.arrow_circle_left_outlined, size: 32),
                  ),
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 24),

              Text(
                "Let’s test your understanding",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _categoryTag(),
                  Row(
                    children: const [
                      Icon(Icons.timer_outlined, size: 20),
                      SizedBox(width: 5),
                      Text("23.03s"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 40),

              _questionContainer(),

              SizedBox(height: 32),

              Column(
                children: List.generate(
                  options.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _optionBox(options[index], alphabet[index], index),
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomButton(
                text: "Next",
                onPressed: () {
                  widget
                      .goToResult();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _categoryTag() {
    return Container(
      height: 38,
      width: 102,
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

  Widget _optionBox(String title, String alpha, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey.shade300,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(title, style: TextStyle(fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFEDF8FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text(alpha)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
