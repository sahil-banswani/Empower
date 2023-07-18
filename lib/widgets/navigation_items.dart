import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData? icon;

  NavigationModel({required this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Dashboard", icon: Icons.insert_chart),
  NavigationModel(title: "Errors", icon: Icons.error),
  NavigationModel(title: "Search", icon: Icons.search),
  NavigationModel(title: "Notifications", icon: Icons.notifications),
  NavigationModel(title: "Settings", icon: Icons.settings),
];

// ignore: must_be_immutable
class CollapsingListTile extends StatefulWidget {
  String? title;
  IconData? icon;
  final AnimationController animationController;

  CollapsingListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.animationController});

  @override
  State<CollapsingListTile> createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  late Animation<double> widthAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widthAnimation =
        Tween<double>(begin: 350, end: 70).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.animationController.value,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: Colors.white30,
            size: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.title.toString(),
            style: const TextStyle(color: Color(0xFF4AC8EA), fontSize: 15),
          ),
        ],
      ),
    );
  }
}
