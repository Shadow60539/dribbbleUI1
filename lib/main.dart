import 'package:dribbble1/core/colors.dart';
import 'package:dribbble1/pages/earnings_page.dart';
import 'package:dribbble1/pages/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: kWhite,
        systemNavigationBarColor: kWhite
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dribbble1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: TransactionPage()
      ),
    );
  }
}
