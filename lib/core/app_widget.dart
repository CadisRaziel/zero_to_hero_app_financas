import 'package:flutter/material.dart';
import 'package:zero_to_hero/modules/login/pages/create_account/create_account.dart';
import 'package:zero_to_hero/modules/login/pages/login/login_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finanças app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        'page_login': (context) => LoginPage(),
        'page_create_account': (context) => CreateAccountPage()
      },
    );
  }
}