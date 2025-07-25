
import '/screens/login/signin_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:form_field_validator/form_field_validator.dart';

class NavProfilePage extends StatefulWidget {
  const NavProfilePage({super.key});

  @override
  State<NavProfilePage> createState() => _NavProfilePageState();
}

class _NavProfilePageState extends State<NavProfilePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final nom = TextEditingController(text: "Chebbi");
  final prenom = TextEditingController(text: "Yahya");
  final phoneNum = TextEditingController(text: "90364356");
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/user_image.jpg"),
              ),
              const SizedBox(height: 30),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: nom,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "Nom",
                  prefixIcon: const Icon(Icons.person_outline_rounded),
                ),
                validator:
                    MultiValidator([
                      RequiredValidator(
                        errorText: "* Veuillez saisir votre Nom",
                      ),
                    ]).call,
              ),
              const SizedBox(height: 10),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: prenom,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "Prénom",

                  prefixIcon: const Icon(Icons.person_outline_rounded),
                ),

                validator:
                    MultiValidator([
                      RequiredValidator(
                        errorText: "* Veuillez saisir votre Prénom",
                      ),
                    ]).call,
              ),
              const SizedBox(height: 10),
              IntlPhoneField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: phoneNum,
                keyboardType: TextInputType.phone,

                decoration: InputDecoration(labelText: 'Numéro téléphone'),

                initialCountryCode: 'TN',
                onChanged: (phone) {},
                validator:
                    MultiValidator([
                      RequiredValidator(
                        errorText: "* Veuillez saisir votre Numéro téléphone",
                      ),
                    ]).call,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () async {
                  if (formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('User has been updated successfully.'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Error')));
                  }
                },
                child: Text("Modifier mon profil"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () async {
                  Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(
                      builder: ((context) => const SigninPage()),
                    ),
                    (route) => false,
                  );
                },
                child: Text("Déconnecter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
