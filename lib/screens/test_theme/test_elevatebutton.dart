import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestElevateButtonPage extends StatelessWidget {
  const TestElevateButtonPage({super.key});

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
              ElevatedButton(onPressed: () {}, child: Text("sign in")),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: null,
                child: Text("sign in with on pressed = null"),
              ),
              SizedBox(height: 10),
              
              ElevatedButton(
                onPressed: () {},
                child: Text("expanded elevated button"),
                style: ElevatedButton.styleFrom(
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