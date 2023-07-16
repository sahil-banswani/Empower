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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Checkbox(
            value: isChecked,
            activeColor: Colors.blue,
            // tristate: true,
            onChanged: (newBool) {
              setState(
                () {
                  isChecked = newBool;
                },
              );
            },
          ),
          const Text(
            'Username',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Email',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Mobile\nNumber',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Status',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'onBoardStatus',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Action',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
