import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:settings_app/screen/view/contact/contact_info_screen.dart';
import 'package:settings_app/screen/view/contact/contact_screen.dart';
import 'package:settings_app/screen/view/dash/provider/dash_screen_ios.dart';

class DashScreenIos extends StatefulWidget {
  const DashScreenIos({super.key});

  @override
  State<DashScreenIos> createState() => _DashScreenIosState();
}

class _DashScreenIosState extends State<DashScreenIos> {
  DashIosProvider? providerr;
  DashIosProvider? providerw;

  List<Widget> screens = [
    HomeScreen(),
    InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    providerw = context.read<DashIosProvider>();
    providerr = context.watch<DashIosProvider>();
    return CupertinoTabView(
      builder: (context) {
        return Column(
          children: [
            IndexedStack(
              index: providerw!.stepIndex,
              children: screens,
            ),
            CupertinoTabBar(
                currentIndex: providerr!.stepIndex,
                onTap: (value) {
                  int i = value;
                  providerr!.changestep(i);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person), label: 'Contact')
                ]),
          ],
        );
      },
    );
  }
}
