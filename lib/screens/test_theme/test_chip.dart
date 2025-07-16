import 'package:flutter/material.dart';

class Testchip extends StatefulWidget {
  const Testchip({super.key});

  @override
  State<Testchip> createState() => _TestchipState();
}

class _TestchipState extends State<Testchip> {
  int? _selectedChipIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Selectable Chips Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 8.0,
          children:
              List.generate(5, (index) {
                return ChoiceChip(
                  label: Text('Option ${index + 1}'),
                  selected: _selectedChipIndex == index,
                  onSelected: (bool selected) {
                    setState(() {
                      if (selected) {
                        _selectedChipIndex = index; 
                      } else {
                        _selectedChipIndex =
                            null; 
                      }
                    });
                  },
                );
              }).toList(),
        ),
      ),
    );
  }
}