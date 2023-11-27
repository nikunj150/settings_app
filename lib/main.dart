import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_app/screen/provider/contact_provider.dart';
import 'package:settings_app/screen/view/contact/contact_screen_android.dart';
import 'package:settings_app/screen/view/contact/info_screen_android.dart';
import 'package:settings_app/utils/app_routes.dart';
import 'dart:io' show Platform;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactProvider(),),
      ],
      child: Platform.isAndroid
          ? MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(useMaterial3: true),
              routes: screen_routes,
            )
         :CupertinoApp(
              debugShowCheckedModeBanner: false,
              routes: app_routes,
            ),
    ),
  );
}
