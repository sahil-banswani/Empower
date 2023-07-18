// import 'package:flutter/material.dart';
// import 'package:life_coach/utils/theme.dart';
// import 'package:life_coach/widgets/navigation_items.dart';

// class CollapsingNavigationDrawer extends StatefulWidget {
//   const CollapsingNavigationDrawer({super.key});

//   @override
//   State<CollapsingNavigationDrawer> createState() =>
//       _CollapsingNavigationDrawerState();
// }

// class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
//     with SingleTickerProviderStateMixin {
//   double maxWidth = 250;
//   double minWidth = 70;
//   bool isCollapsed = true;
//   late AnimationController _animationController;
//   late Animation<double> widthAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 3000));
//     widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
//         .animate(_animationController);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//         animation: _animationController,
//         builder: (context, widget) {
//           return getWidget(context, widget);
//         });
//   }

//   Widget getWidget(context, widget) => Container(
//         width: widthAnimation.value,
//         color: const Color(0xFF272D34),
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 50,
//             ),
//             CollapsingListTile(
//               title: 'Dignity Of Nobels',
//               icon: Icons.person,
//               animationController: _animationController,
//             ),
//             const Divider(color: Colors.white60, height: 3),
//             Expanded(
//               child: ListView.builder(
//                   itemCount: navigationItems.length,
//                   itemBuilder: (context, index) {
//                     return CollapsingListTile(
//                         title: navigationItems[index].title,
//                         icon: navigationItems[index].icon,
//                         animationController: _animationController);
//                   }),
//             ),
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   isCollapsed = !isCollapsed;
//                   isCollapsed
//                       ? _animationController.forward()
//                       : _animationController;
//                 });
//               },
//             ),
//             const Icon(
//               Icons.chevron_left,
//               color: Colors.white30,
//               size: 50.0,
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//           ],
//         ),
//       );
// }
//   // late List<CollapsibleItem> _items;
//   // late String _headline;
//   // final AssetImage _avatarImg = const AssetImage('assets/images/logo.png');

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _items = _generateItems;
//   //   _headline = _items.firstWhere((item) => item.isSelected).text;
//   // }

//   // List<CollapsibleItem> get _generateItems {
//   //   return [
//   //     CollapsibleItem(
//   //         text: 'Life Coach | Job Coach | Enterpreneurship',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Life Coach | Job Coach | Enterpreneurship';
//   //           });
//   //         }),
//   //     CollapsibleItem(
//   //         text: 'Law | Ethics | Compliance | Values',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Law | Ethics | Compliance | Values';
//   //           });
//   //         }),
//   //     CollapsibleItem(
//   //         text: 'Leadership | CSR | Administration',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Leadership | CSR | Administration';
//   //           });
//   //         }),
//   //     CollapsibleItem(
//   //         text: 'Buiness Economics | Buiness Statistics',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Buiness Economics | Buiness Statistics';
//   //           });
//   //         }),
//   //     CollapsibleItem(
//   //         text: 'Accounting | Auditing | Taxation',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Accounting | Auditing | Taxation';
//   //           });
//   //         }),
//   //     CollapsibleItem(
//   //         text: 'Finance | FP&A | Social Investment',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Finance | FP&A | Social Investment';
//   //           });
//   //         }),
//   //     CollapsibleItem(
//   //         text: 'Innovation | Technology',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Innovation | Technology';
//   //           });
//   //         }),
//   //     CollapsibleItem(
//   //         text: 'Statergy & Potfolio',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Statergy & Potfolio';
//   //           });
//   //         }),
//   //     CollapsibleItem(
//   //         text: 'Marketing',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Marketing';
//   //           });
//   //         }),
//   //     CollapsibleItem(
//   //         text: 'Buiness Devlopemnet | Customer Relationship',
//   //         icon: Icons.assessment,
//   //         onPressed: () {
//   //           setState(() {
//   //             _headline = 'Buiness Devlopemnet | Customer Relationship';
//   //           });
//   //         }),
//   //   ];
//   // }

//   // @override
//   // Widget build(BuildContext context) {
//   //   var size = MediaQuery.of(context).size;
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: const Text('Empower'),
//   //       centerTitle: true,
//   //       backgroundColor: const Color(0xFF08154A),
//   //       elevation: 0,
//   //     ),
//   //     body: CollapsibleSidebar(
//   //       isCollapsed: true,
//   //       avatarImg: _avatarImg,
//   //       items: _items,
//   //       title: 'Dignity of Nobels',
//   //       onTitleTap: () {
//   //         ScaffoldMessenger.of(context).showSnackBar(
//   //           const SnackBar(
//   //             content: Text('Collapsible Sidebar'),
//   //           ),
//   //         );
//   //       },
//   //       body: _body(size, context),
//   //       backgroundColor: Color(0xFF08154A),
//   //       selectedTextColor: Colors.limeAccent,
//   //       textStyle: const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
//   //       titleStyle: const TextStyle(
//   //           fontSize: 20,
//   //           fontStyle: FontStyle.italic,
//   //           fontWeight: FontWeight.bold),
//   //       toggleTitleStyle: const TextStyle(
//   //         fontSize: 20,
//   //         fontWeight: FontWeight.bold,
//   //       ),
//   //       sidebarBoxShadow: const [
//   //         BoxShadow(
//   //             color: Colors.indigo,
//   //             blurRadius: 20,
//   //             spreadRadius: 0.01,
//   //             offset: Offset(3, 3)),
//   //         BoxShadow(
//   //           color: Colors.green,
//   //           blurRadius: 50,
//   //           spreadRadius: 0.01,
//   //           offset: Offset(3, 3),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }

//   // Widget _body(Size size, BuildContext context) {
//   //   return Container(
//   //     height: double.infinity,
//   //     width: double.infinity,
//   //     color: Colors.blueGrey[50],
//   //     child: Center(
//   //       child: Transform.rotate(
//   //         angle: math.pi / 2,
//   //         child: Transform.translate(
//   //           offset: Offset(-size.height * 0.3, -size.width * 0.23),
//   //           child: Text(
//   //             _headline,
//   //             style: Theme.of(context).textTheme.headline1,
//   //             overflow: TextOverflow.visible,
//   //             softWrap: false,
//   //           ),
//   //         ),
//   //       ),
//   //     ),
//   //   );
import 'dart:math' as math show pi;
import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';

class CollapsibleDrawer extends StatefulWidget {
  const CollapsibleDrawer({super.key});

  @override
  State<CollapsibleDrawer> createState() => _CollapsibleDrawerState();
}

class _CollapsibleDrawerState extends State<CollapsibleDrawer> {
  String _headline = '';
  List<CollapsibleItem> _items = [];
  AssetImage _avatarImg = AssetImage('assets/images/logo.png');

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
        onPressed: () => setState(
            () => _headline = 'Life Coach | Job Coach | Enterpreneurship'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Life Coach | Job Coach | Enterpreneurship"),
          ),
        ),
        isSelected: true,
      ),
      // subItems: [
      //   CollapsibleItem(
      //     text: 'Menu',
      //     icon: Icons.menu_book,
      //     onPressed: () => setState(() => _headline = 'Menu'),
      //     onHold: () => ScaffoldMessenger.of(context).showSnackBar(
      //       const SnackBar(
      //         content: Text("Menu"),
      //       ),
      //     ),
      //     isSelected: true,
      //   ),
      //   CollapsibleItem(
      //       text: 'Shop',
      //       iconImage: AssetImage("assests/images/logo.png"),
      //       icon: Icons.ac_unit,
      //       onPressed: () => setState(() => _headline = 'Shop'),
      //       onHold: () => ScaffoldMessenger.of(context)
      //           .showSnackBar(SnackBar(content: const Text("Shop"))),
      //       isSelected: true,
      //       subItems: [
      //         CollapsibleItem(
      //           text: 'Cart',
      //           icon: Icons.shopping_cart,
      //           onPressed: () => setState(() => _headline = 'Cart'),
      //           onHold: () => ScaffoldMessenger.of(context)
      //               .showSnackBar(SnackBar(content: const Text("Cart"))),
      //           isSelected: true,
      //         )
      //       ]),
      // ]),
      CollapsibleItem(
        text: 'Law | Ethics | Compliance | Values',
        icon: Icons.add_card,
        onPressed: () =>
            setState(() => _headline = 'Law | Ethics | Compliance | Values'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("Law | Ethics | Compliance | Values"),
          ),
        ),
      ),
      CollapsibleItem(
        text: 'Leadership | CSR | Administration',
        icon: Icons.leaderboard,
        onPressed: () =>
            setState(() => _headline = 'Leadership | CSR | Administration'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: const Text("Leadership | CSR | Administration"))),
      ),
      CollapsibleItem(
        text: 'Buiness Economics | Buiness Statistics',
        icon: Icons.business_sharp,
        onPressed: () => setState(
            () => _headline = 'Buiness Economics | Buiness Statistics'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text("Buiness Economics | Buiness Statistics"))),
      ),
      CollapsibleItem(
        text: 'Accounting | Auditing | Taxation',
        icon: Icons.grade,
        onPressed: () =>
            setState(() => _headline = 'Accounting | Auditing | Taxation'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: const Text("Accounting | Auditing | Taxation"))),
      ),
      CollapsibleItem(
          text: 'Finance | FP&A | Social Investment',
          icon: Icons.access_alarm,
          onPressed: () {}),
      CollapsibleItem(
        text: 'Innovation | Technology',
        icon: Icons.eco,
        onPressed: () {},
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: const Text("Innovation | Technology"))),
      ),
      CollapsibleItem(
        text: 'Statergy & Potfolio',
        icon: Icons.event,
        onPressed: () => setState(() => _headline = 'Statergy & Potfolio'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Statergy & Potfolio"))),
      ),
      CollapsibleItem(
        text: 'Marketing',
        icon: Icons.scale_sharp,
        onPressed: () => setState(() => _headline = 'Marketing'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Marketing"))),
      ),
      CollapsibleItem(
        text: 'Buiness Devlopemnet | Customer Relationship',
        icon: Icons.join_full,
        onPressed: () => setState(
            () => _headline = 'Buiness Devlopemnet | Customer Relationship'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content:
                const Text("Buiness Devlopemnet | Customer Relationship"))),
      ),
      // CollapsibleItem(
      //     text: 'News',
      //     iconImage: NetworkImage(
      //         "https://cdn-icons-png.flaticon.com/512/330/330703.png"),
      //     onPressed: () => setState(() => _headline = 'News'),
      //     onHold: () => ScaffoldMessenger.of(context)
      //         .showSnackBar(SnackBar(content: const Text("News"))),
      //     subItems: [
      //       CollapsibleItem(
      //         text: 'Old News',
      //         icon: Icons.elderly,
      //         onPressed: () => setState(() => _headline = 'Old News'),
      //         onHold: () => ScaffoldMessenger.of(context)
      //             .showSnackBar(SnackBar(content: const Text("Old News"))),
      //       ),
      //       CollapsibleItem(
      //           text: 'Current News',
      //           icon: Icons.yard_outlined,
      //           onPressed: () => setState(() => _headline = 'Current News'),
      //           onHold: () => ScaffoldMessenger.of(context).showSnackBar(
      //               SnackBar(content: const Text("Current News"))),
      //           subItems: [
      //             CollapsibleItem(
      //               text: 'News 1',
      //               icon: Icons.one_k,
      //               onPressed: () => setState(() => _headline = 'News 1'),
      //               onHold: () => ScaffoldMessenger.of(context)
      //                   .showSnackBar(SnackBar(content: const Text("News 1"))),
      //             ),
      //             CollapsibleItem(
      //                 text: 'News 2',
      //                 icon: Icons.two_k,
      //                 onPressed: () => setState(() => _headline = 'News 2'),
      //                 onHold: () => ScaffoldMessenger.of(context).showSnackBar(
      //                     SnackBar(content: const Text("News 2"))),
      //                 subItems: [
      //                   CollapsibleItem(
      //                     text: 'News 2 Detail',
      //                     icon: Icons.two_k_outlined,
      //                     onPressed: () =>
      //                         setState(() => _headline = 'News 2 Detail'),
      //                     onHold: () => ScaffoldMessenger.of(context)
      //                         .showSnackBar(SnackBar(
      //                             content: const Text("News 2 Detail"))),
      //                   )
      //                 ]),
      //             CollapsibleItem(
      //               text: 'News 3',
      //               icon: Icons.three_k,
      //               onPressed: () => setState(() => _headline = 'News 3'),
      //               onHold: () => ScaffoldMessenger.of(context)
      //                   .showSnackBar(SnackBar(content: const Text("News 3"))),
      //             )
      //           ]),
      //       CollapsibleItem(
      //         text: 'New News',
      //         icon: Icons.account_balance,
      //         onPressed: () => setState(() => _headline = 'New News'),
      //         onHold: () => ScaffoldMessenger.of(context)
      //             .showSnackBar(SnackBar(content: const Text("New News"))),
      //       ),
      //     ]),
      CollapsibleItem(
        text: 'Face',
        icon: Icons.face,
        onPressed: () => setState(() => _headline = 'Face'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Face"))),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        isCollapsed: MediaQuery.of(context).size.width <= 800,
        items: _items,
        collapseOnBodyTap: false,
        avatarImg: _avatarImg,
        title: 'Dignity Of Nobels',
        onTitleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Yay! Flutter Collapsible Sidebar!')));
        },
        body: _body(size, context),
        backgroundColor: Colors.black,
        selectedTextColor: Colors.limeAccent,
        textStyle: const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
        titleStyle: const TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        toggleTitleStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        sidebarBoxShadow: const [
          BoxShadow(
            color: Colors.indigo,
            blurRadius: 20,
            spreadRadius: 0.01,
            offset: Offset(3, 3),
          ),
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
              style: Theme.of(context).textTheme.headlineMedium,
              overflow: TextOverflow.visible,
              softWrap: false,
            ),
          ),
        ),
      ),
    );
  }
}
