import 'package:flutter/material.dart';
import 'package:life_coach/responsiveLayout/responsive.dart';
import 'package:life_coach/screens/enrollment_screen.dart';
import 'package:life_coach/screens/login_screen.dart';
import 'package:life_coach/screens/tab_screens_layout.dart';
import 'package:life_coach/widgets/collabsible.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch:
      //   ),
      home: ResponsiveLayout(
        mobileScreenLayout: EnrollmentLayout(),
        tabScreenLayout: const CollapsibleDrawer(),
      ),
    );
  }
}
