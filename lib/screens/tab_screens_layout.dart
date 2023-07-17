import 'package:flutter/material.dart';
import 'dart:math' as math show pi;
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
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
  late List<CollapsibleItem> _items;
  late String _headline;
  final AssetImage _avatarImg = const AssetImage('assets/images/logo.png');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
          text: 'Life Coach | Job Coach | Enterpreneurship',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Life Coach | Job Coach | Enterpreneurship';
            });
          }),
      CollapsibleItem(
          text: 'Law | Ethics | Compliance | Values',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Law | Ethics | Compliance | Values';
            });
          }),
      CollapsibleItem(
          text: 'Leadership | CSR | Administration',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Leadership | CSR | Administration';
            });
          }),
      CollapsibleItem(
          text: 'Buiness Economics | Buiness Statistics',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Buiness Economics | Buiness Statistics';
            });
          }),
      CollapsibleItem(
          text: 'Accounting | Auditing | Taxation',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Accounting | Auditing | Taxation';
            });
          }),
      CollapsibleItem(
          text: 'Finance | FP&A | Social Investment',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Finance | FP&A | Social Investment';
            });
          }),
      CollapsibleItem(
          text: 'Innovation | Technology',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Innovation | Technology';
            });
          }),
      CollapsibleItem(
          text: 'Statergy & Potfolio',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Statergy & Potfolio';
            });
          }),
      CollapsibleItem(
          text: 'Marketing',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Marketing';
            });
          }),
      CollapsibleItem(
          text: 'Buiness Devlopemnet | Customer Relationship',
          icon: Icons.assessment,
          onPressed: () {
            setState(() {
              _headline = 'Buiness Devlopemnet | Customer Relationship';
            });
          }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Empower'),
        centerTitle: true,
        backgroundColor: const Color(0xFF08154A),
        elevation: 0,
      ),
      body: CollapsibleSidebar(
        isCollapsed: true,
        avatarImg: _avatarImg,
        items: _items,
        title: 'Dignity of Nobels',
        onTitleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Collapsible Sidebar'),
            ),
          );
        },
        body: _body(size, context),
        backgroundColor: Color(0xFF08154A),
        selectedTextColor: Colors.limeAccent,
        textStyle: const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
        titleStyle: const TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        toggleTitleStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        sidebarBoxShadow: const [
          BoxShadow(
              color: Colors.indigo,
              blurRadius: 20,
              spreadRadius: 0.01,
              offset: Offset(3, 3)),
          BoxShadow(
            color: Colors.green,
            blurRadius: 50,
            spreadRadius: 0.01,
            offset: Offset(3, 3),
          ),
        ],
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey[50],
      child: Center(
        child: Transform.rotate(
          angle: math.pi / 2,
          child: Transform.translate(
            offset: Offset(-size.height * 0.3, -size.width * 0.23),
            child: Text(
              _headline,
              style: Theme.of(context).textTheme.headline1,
              overflow: TextOverflow.visible,
              softWrap: false,
            ),
          ),
        ),
      ),
    );
  }
}
      // body: Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         color: const Color(0xFF08154A),
      //         child: Padding(
      //           padding: const EdgeInsets.only(top: 20, left: 20),
      //           child: SizedBox(
      //             height: double.infinity,
      //             child: SingleChildScrollView(
      //               scrollDirection: Axis.vertical,
      //               child: Column(
      //                 children: [
      //                   Row(
      //                     children: [
      //                       const CircleAvatar(
      //                         radius: 20.0,
      //                         backgroundImage:
      //                             AssetImage('lib/images/logo.png'),
      //                       ),
      //                       const SizedBox(width: 20),
      //                       Button(
      //                         text: 'Subscribe',
      //                         onPressed: () {},
      //                       ),
      //                       const SizedBox(width: 3),
      //                       Button(
      //                         text: 'LogOut',
      //                         onPressed: () {},
      //                       ),
      //                     ],
      //                   ),
      //                   SizedBox(
      //                     height: size * 0.03,
      //                   ),
      //                   const Divider(
      //                     color: Colors.grey,
      //                     height: 1,
      //                     thickness: 2,
      //                   ),
      //                   ListTileTheme(
      //                     textColor: Colors.white,
      //                     iconColor: Colors.white,
      //                     child: Column(
      //                       children: [
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.person),
      //                           title: const Text(
      //                               'Life Coach | Job Coach | Enterpreneurship'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.account_balance),
      //                           title: const Text(
      //                               'Law | Ethics | Compliance | Values'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.leaderboard),
      //                           title: const Text(
      //                               'Leadership | CSR | Administration'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.business),
      //                           title: const Text(
      //                               'Buiness Economics | Buiness Statistics'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.account_balance),
      //                           title: const Text(
      //                               'Accounting | Auditing | Taxation'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.find_replace_rounded),
      //                           title: const Text(
      //                               'Finance | FP&A | Social Investment'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.inventory),
      //                           title: const Text('Innovation | Technology'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.point_of_sale),
      //                           title: const Text('Statergy & Potfolio'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.shopping_bag),
      //                           title: const Text('Marketing'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.developer_board),
      //                           title: const Text(
      //                               'Buiness Devlopemnet | Customer Relationship'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading:
      //                               const Icon(Icons.delivery_dining_rounded),
      //                           title: const Text(
      //                               'Supply Chain Management | Delivery'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.settings),
      //                           title: const Text('Operations | Logistics'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.settings),
      //                           title: const Text('Human Resouces Managemnet'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.settings),
      //                           title: const Text(
      //                               'Mergers & Acquisition | Valuations'),
      //                         ),
      //                         ListTile(
      //                           onTap: () {},
      //                           leading: const Icon(Icons.settings),
      //                           title: const Text(
      //                               'Recognize | Celebrate | Giving Back'),
      //                         ),
      //                       ],
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Expanded(
      //       flex: 7,
      //       child: Center(
      //         child: Text('Hey!!'),
      //       ),
      //     ),
      //   ],
      // ),
    