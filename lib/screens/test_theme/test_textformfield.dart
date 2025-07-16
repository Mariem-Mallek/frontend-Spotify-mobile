import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TestTextFormField extends StatefulWidget {
  const TestTextFormField({super.key});

  @override
  State<TestTextFormField> createState() => _TestTextFormFieldState();
}

class _TestTextFormFieldState extends State<TestTextFormField> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _passwordVisible = true;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),

          child: Scaffold(
            appBar: AppBar(
              title: SvgPicture.asset(
                "assets/images/logo-spotify.svg",
                height: 30,
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
              ],
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
            ),

            body: Column(
              children: [
                SvgPicture.asset("assets/images/logo-spotify.svg", height: 80),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Entre your email",
                    hintText: "email@gmail.com",
                    prefixIcon: Icon(Icons.home),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                    labelText: "Enter your password",
                    hintText: "***********",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("sign in"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}