import 'package:flutter/material.dart';
import 'package:life_coach/screens/screen%20for%20drawer/leadership_screen.dart';
import 'package:life_coach/screens/tab_login_screen.dart';
import 'package:life_coach/widgets/collabsible.dart';
import '../responsiveLayout/responsive.dart';
import 'login_screen.dart';
import 'screen for drawer/life_coach_screen.dart';
import 'screen for drawer/marketing_screens.dart';
import 'screen for drawer/stratergy&potfoilio_scree.dart';

class TabScreenLayout extends StatefulWidget {
  const TabScreenLayout({Key? key}) : super(key: key);

  @override
  State<TabScreenLayout> createState() => _TabScreenLayoutState();
}

class _TabScreenLayoutState extends State<TabScreenLayout> {
  int selectedIndex = 0;

  List<Widget> screens = [
    const Center(
      child: Text(
        "Dashboard",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
          color: Color(0xFF08154A),
        ),
      ),
    ),
    const LifeCoachScreen(),
    const LeadershipScreen(),
    const StrategyScreen(),
    // const MarketingScreen(),
    //   BusinessDevelopmentScreen(),
    // Add more screens for other list tile indices
  ];

  @override
  Widget build(BuildContext context) {
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
          Flexible(
            flex: 4,
            child: Container(
              color: const Color(0xFF08154A),
              child: SafeArea(
                  child: ListTileTheme(
                      child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: ClipOval(
                          child: Stack(
                            children: [
                              const CircleAvatar(
                                radius: 40.0,
                                backgroundImage:
                                    AssetImage('assets/images/logo.png'),
                              ),
                              Positioned(
                                right: -4.0,
                                bottom: -4.0,
                                child: IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SizedBox(
                                          height: 200.0,
                                          child: Column(
                                            children: [
                                              ListTile(
                                                onTap: () {
                                                  // Handle "Notification" list item click
                                                  Navigator.pop(
                                                      context); // Close the bottom sheet
                                                },
                                                title:
                                                    const Text('Notification'),
                                              ),
                                              ListTile(
                                                onTap: () {
                                                  // Handle "Push Notification" list item click
                                                  Navigator.pop(
                                                      context); // Close the bottom sheet
                                                },
                                                title: const Text(
                                                    'No Notification'),
                                              ),
                                              ListTile(
                                                onTap: () {
                                                  // Handle "All Notification" list item click
                                                  Navigator.pop(
                                                      context); // Close the bottom sheet
                                                },
                                                title: const Text('View All'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.doorbell_outlined,
                                    color: Colors.black,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TabSubscribe()));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                width: 100.0,
                                height: 40.0,
                                color: Colors.indigo,
                                child: const Center(
                                  child: Text(
                                    'SUBSCRIBE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ResponsiveLayout(
                                              tabScreenLayout: TabLoginScreen(),
                                              mobileScreenLayout:
                                                  LoginScreen())));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Material(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: const BorderSide(
                                    color: Colors.indigo,
                                    width: 1.0,
                                  ),
                                ),
                                child: Container(
                                  width: 90.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.white54,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'LOGOUT',
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 1.0,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: CollapsibleDrawer(),
                    ),
                  ),
                ],
              ))),
            ),
          ),
          Expanded(
            flex: 6,
            child: Align(
              alignment: Alignment.topLeft,
              child: IndexedStack(
                index: selectedIndex,
                children: screens,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabSubscribe extends StatelessWidget {
  final List<String> headings = [
    'PWB-Social Impact Partners ( Organizations )',
    'PWB-Individual',
    'Corporate Social Responsibility (CSR) Executive',
    'Social Investors',
    'Students',
    'Customers Recruiting',
    'Service Provider',
    'Service Provider University',
    'Service Provider Professional',
    'Service Provider Interviewer',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscription Plans'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
            child: ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                // MaterialPageRoute(
                //   builder: (context) => AnotherScreen(
                //     heading: headings[index],
                //   ),
                // ),
                // );
              },
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0),
                  Center(
                    child: Text(
                      headings[index],
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    'Social impact can be defined as the effect on people and communities that happens as a result of an action or inaction, an activity, project, programme or policy.For the plans',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
