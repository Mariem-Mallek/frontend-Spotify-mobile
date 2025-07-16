import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestOutlinedButtonPage extends StatelessWidget {
  const TestOutlinedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: () {}, child: Text("sign in")),
              SizedBox(height: 10),

              
              OutlinedButton(
                onPressed: () {},
                child: Text("sign in expanded"),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}