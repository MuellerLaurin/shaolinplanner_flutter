import 'package:flutter/material.dart';

class NumberPickerDialog extends StatelessWidget {
  final int initialValue;
  const NumberPickerDialog({super.key, required this.initialValue});

  @override
  Widget build(BuildContext context) {
    int selectedValue = initialValue;
    return AlertDialog(
      title: const Text('Select Time in Minutes'),
      content: StatefulBuilder(
        builder: (context, setState) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Slider(
                value: selectedValue.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                label: selectedValue.toString(),
                onChanged: (value) =>
                    setState(() => selectedValue = value.toInt()),
              ),
              Text(
                '$selectedValue minutes',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          );
        },
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(selectedValue),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
