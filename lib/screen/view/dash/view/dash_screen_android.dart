import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_app/screen/view/contact/contact_screen_android.dart';
import 'package:settings_app/screen/view/contact/info_screen_android.dart';
import 'package:settings_app/screen/view/dash/provider/dash_provider_android.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({super.key});

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  DashProvider? providerR;
  DashProvider? providerW;
  List<Widget>screen=[
    ContactScreen(),
    ContactInfoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    providerR =context.read<DashProvider>();
    providerW =context.watch<DashProvider>();
    return SafeArea(
      child: Scaffold(
        body: screen[providerW!.index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: providerR!.index,
          onTap:(value) {
            int i=value;
            providerR!.changestep(i);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'person'),
          ],
        ),
      ),
    );
  }
}
