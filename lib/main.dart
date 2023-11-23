import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_app/screen/view/contact/contact_info_screen.dart';
import 'package:settings_app/screen/view/contact/contact_screen_android.dart';
import 'package:settings_app/screen/view/contact/info_screen_android.dart';
import 'package:settings_app/utils/app_routes.dart';
import 'dart:io'show Platform;

void main()
{
  runApp(
    // Platform.isAndroid?MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(useMaterial3: true),
    //   routes: {
    //     '/':(context) => ContactScreen(),
    //     'information':(context) => ContactInfoScreen(),
    //   },
    /* ):*/CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
    ),
  );
}