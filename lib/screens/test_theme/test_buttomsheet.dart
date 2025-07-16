import 'package:flutter/material.dart';

class TestBottomSheet extends StatelessWidget {
  const TestBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "ceci est un bottom sheet ",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                "ceci est un bottom sheet ",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                "ceci est un bottom sheet ",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("data"),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text("Afficher bottom sheet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}