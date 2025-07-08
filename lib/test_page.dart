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
        body: SizedBox(
          //Container prend toute la largeur de l'écran
          width: double.infinity,
          child :Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("This is a test page"),
              ElevatedButton(onPressed: (){}, child: Text("Click Me")),
              Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
              )  
            ],
          ),
        )
      ),
    );
  }
}
