import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:formation_flutter/screens/login/signin_page.dart';
import 'package:formation_flutter/utils/constants/colors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late GlobalKey<FormState> _formkey;
  bool _passwordInvisible = true;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formkey = GlobalKey<FormState>();
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
        appBar: AppBar(
          title: SvgPicture.asset("assets/images/logo-spotify.svg", height: 30),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SvgPicture.asset("assets/images/logo-spotify.svg"),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hello! Register to get started",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _usernameController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: "Enter your username",
                      prefixIcon: Icon(Icons.person_outline_rounded),
                    ),
                    validator:
                        MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                        ]).call,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _emailController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: "Enter your email",
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    validator:
                        MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                          EmailValidator(
                            errorText: "Please entre a valid email address",
                          ),
                        ]).call,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _passwordController,
                    maxLines: 1,
                    obscureText: _passwordInvisible,
                    decoration: InputDecoration(
                      labelText: "Enter your password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordInvisible = !_passwordInvisible;
                          });
                        },
                        icon: Icon(
                          _passwordInvisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    validator:
                        MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                          MinLengthValidator(
                            6,
                            errorText:
                                "Password must be at least 6 characters.",
                          ),
                          MaxLengthValidator(
                            15,
                            errorText:
                                "Password must not exceed 15 characters.",
                          ),
                        ]).call,
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        print("format valid");
                      } else {
                        print("format invalid");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Sign Up"),
                  ),

                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SigninPage()),
                        );
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(text: "Already have an account? "),
                            TextSpan(
                              text: "Login! ",
                              style: TextStyle(color: TColors.primary),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
  
