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
          height: double.infinity,
          child :Column(children: [
            Text("Debut Page",style: TextStyle(fontSize: 30, color: Colors.red)),
            SizedBox(height: 670),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Icon(Icons.phone , color: Colors.blue , size: 30),
                Text("Phone",style:TextStyle(fontSize: 20, color: Colors.blue)),
              ]),

              Column(children: [
                Icon(Icons.navigate_next , color: Colors.blue, size: 30),
                Text("Route",style:TextStyle(fontSize: 20, color: Colors.blue)),
              ]),
              
              Column(children: [
                Icon(Icons.share, color: Colors.blue , size: 30),
                Text("Share",style:TextStyle(fontSize: 20, color: Colors.blue)),
              ]), 
            ],
          ),
          ],)
        )
      ),
    );
  }
}
