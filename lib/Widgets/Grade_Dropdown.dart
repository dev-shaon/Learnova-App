import 'package:flutter/material.dart';

class CustomGradeDropdown extends StatefulWidget {
  @override
  _CustomGradeDropdownState createState() => _CustomGradeDropdownState();
}

class _CustomGradeDropdownState extends State<CustomGradeDropdown> {
  bool isOpen = false;
  String selected = "Grades";

  List<String> items = [
    "Primary 1",
    "Primary 2",
    "Primary 3",
    "Primary 4",
    "Primary 5",
    "Primary 6",
    "Form 1",
    "Form 2",
    "Form 3",
    "Form 4",
    "Form 5",
    "Form 6",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Color(0xFFF5F7FB),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(selected, style: TextStyle(fontSize: 16)),
                Icon(isOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ),

        if (isOpen)
          Container(
            width: double.infinity,
            height: 150, 
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 6),
              ],
            ),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Center(child: Text(items[index])),
                  onTap: () {
                    setState(() {
                      selected = items[index];
                      isOpen = false;
                    });
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}
