import 'package:flutter/material.dart';

class TestCheckbox extends StatefulWidget {
  const TestCheckbox({super.key});

  @override
  State<TestCheckbox> createState() => _TestCheckboxState();
}

class _TestCheckboxState extends State<TestCheckbox> {
  bool _isChecked = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            children: [
              CheckboxListTile(
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
                title: Text("custom checkbox"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}