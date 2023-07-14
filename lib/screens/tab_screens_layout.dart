import 'package:flutter/material.dart';
import 'package:life_coach/widgets/rounded_button.dart';
// import 'package:http/http.dart' as http;
// import 'package:cookie_jar/cookie_jar.dart';
// import 'dart:convert';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:html/parser.dart' as htmlParser;
// import '../widgets/rounded_button.dart';

class TabScreenLayout extends StatefulWidget {
  const TabScreenLayout({super.key});

  @override
  State<TabScreenLayout> createState() => _TabScreenLayoutState();
}

class _TabScreenLayoutState extends State<TabScreenLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Empower'),
        centerTitle: true,
        backgroundColor: const Color(0xFF08154A),
        elevation: 0,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: const Color(0xFF08154A),
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: SizedBox(
                  height: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 20.0,
                              backgroundImage:
                                  AssetImage('lib/images/logo.png'),
                            ),
                            const SizedBox(width: 20),
                            Button(
                              text: 'Subscribe',
                              onPressed: () {},
                            ),
                            const SizedBox(width: 3),
                            Button(
                              text: 'LogOut',
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size * 0.03,
                        ),
                        const Divider(
                          color: Colors.grey,
                          height: 1,
                          thickness: 2,
                        ),
                        ListTileTheme(
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.person),
                                title: const Text(
                                    'Life Coach | Job Coach | Enterpreneurship'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.account_balance),
                                title: const Text(
                                    'Law | Ethics | Compliance | Values'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.leaderboard),
                                title: const Text(
                                    'Leadership | CSR | Administration'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.business),
                                title: const Text(
                                    'Buiness Economics | Buiness Statistics'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.account_balance),
                                title: const Text(
                                    'Accounting | Auditing | Taxation'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.find_replace_rounded),
                                title: const Text(
                                    'Finance | FP&A | Social Investment'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.inventory),
                                title: const Text('Innovation | Technology'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.point_of_sale),
                                title: const Text('Statergy & Potfolio'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.shopping_bag),
                                title: const Text('Marketing'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.developer_board),
                                title: const Text(
                                    'Buiness Devlopemnet | Customer Relationship'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading:
                                    const Icon(Icons.delivery_dining_rounded),
                                title: const Text(
                                    'Supply Chain Management | Delivery'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.settings),
                                title: const Text('Operations | Logistics'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.settings),
                                title: const Text('Human Resouces Managemnet'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.settings),
                                title: const Text(
                                    'Mergers & Acquisition | Valuations'),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.settings),
                                title: const Text(
                                    'Recognize | Celebrate | Giving Back'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Center(
              child: Text('Hey!!'),
            ),
          ),
        ],
      ),
    );
  }
}
