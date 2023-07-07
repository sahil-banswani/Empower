import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:cookie_jar/cookie_jar.dart';
// import 'dart:convert';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:html/parser.dart' as htmlParser;
// import '../widgets/rounded_button.dart';

class TabScreenLayout extends StatefulWidget {
  final int id;
  const TabScreenLayout({Key? key, this.id = 0}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<TabScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Hey!!')),
    );
  }
}
