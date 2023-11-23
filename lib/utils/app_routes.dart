import 'package:flutter/cupertino.dart';
import 'package:settings_app/screen/view/contact/contact_info_screen.dart';
import 'package:settings_app/screen/view/contact/contact_screen.dart';


Map<String,WidgetBuilder> app_routes={

  '/':(context) => const HomeScreen(),
  'info':(context) => const InfoScreen(),
};