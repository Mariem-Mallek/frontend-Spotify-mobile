import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formation_flutter/screens/login/signup_page.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/logo-spotify.svg"),
              const SizedBox(height: 20),
              Text(
                "Millions of songs",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 10),
              Text(
                "Free on Spotify.",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Sign Up Free"),
              ),

              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print("object");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/facebook.png", height: 20),
                    const SizedBox(width: 10),
                    const Text("Continue with Facebook"),
                  ],
                ),
              ),

              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print("object");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/icons/apple.png", height: 25),
                    Text("Continue with Apple"),
                  ],
                ),
              ),

              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print("object");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/icons/google.png", height: 25),
                    Text("Continue with Gmail"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
