import '/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TestTextScreen extends StatelessWidget {
  const TestTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Headline Large (Actuel)",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "Headline Medium (Actuel)",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "Headline Small (Actuel)",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                "Title Large (Actuel)",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Title Medium (Actuel)",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Title Small (Actuel)",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "Body Large (Actuel)",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Body Medium (Actuel)",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "Body Small (Actuel)",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Label Large (Actuel)",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                "Label Medium (Actuel)",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Text(
                "Headline Large (change color)",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: TColors.buttonPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}