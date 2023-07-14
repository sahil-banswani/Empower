import 'package:flutter/material.dart';

class SendEmail extends StatefulWidget {
  SendEmail({super.key});

  @override
  State<SendEmail> createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: Colors.deepPurple,
          // tristate: true,
          onChanged: (newBool) {
            setState(
              () {
                isChecked = newBool;
              },
            );
          },
        ),
        const Text('Username'),
        const Text('Email'),
        const Text('Mobile\nNumber'),
        const Text('Status'),
      ],
    );
  }
}
