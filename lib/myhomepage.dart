import 'package:flutter/material.dart';
import 'package:textstyle/myappbar.dart';
import 'package:textstyle/mybodycontent.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: MyBodyContent(),
    );
  }
}
