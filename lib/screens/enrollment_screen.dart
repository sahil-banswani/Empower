import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_coach/widgets/send_email.dart';
import '../widgets/rounded_button.dart';

class EnrollmentLayout extends StatelessWidget {
  const EnrollmentLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      appBar: AppBar(
        title: const Text(
          'Enrollment \nDevlopment',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF08154A),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: 'Customer \nEnrollment',
                  onPressed: () {},
                ),
                Button(
                  text: 'Service Provider \nEnrollment',
                  onPressed: () {},
                ),
                Button(
                  text: 'PWD \nEnrollment',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.all(14),
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: const Text(
              'Email',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(14),
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: const Text(
              'Send Email',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Text(
            'Customer Enrollment',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SendEmail(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
