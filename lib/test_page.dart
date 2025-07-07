import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Text("Test Page"),
          leading: Icon(Icons.home),
          actions: [
            Icon(Icons.signal_wifi_0_bar_rounded),
            //Espace 
            SizedBox(width: 10),
            Icon(Icons.settings),
          ]
        ), 
        body: Text("Hello World!")),
    );
  }
}
