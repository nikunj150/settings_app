import 'package:flutter/cupertino.dart';
import 'package:settings_app/screen/view/contact/contact_info_screen.dart';
import 'package:settings_app/screen/view/contact/contact_screen.dart';
import 'package:settings_app/screen/view/dash/view/dash_screen_android.dart';
import 'package:settings_app/screen/view/dash/view/dash_screen_ios.dart';

import '../screen/view/contact/contact_screen_android.dart';
import '../screen/view/contact/info_screen_android.dart';


Map<String,WidgetBuilder> app_routes={

  '/':(context) => DashScreenIos(),
  // '/':(context) => const HomeScreen(),
  //'info':(context) => const InfoScreen(),
};
Map<String,WidgetBuilder> screen_routes = {


'/' :(context) => DashScreen(),
  //  '/': (context) => const ContactScreen(),
    //'information': (context) => const ContactInfoScreen(),

};