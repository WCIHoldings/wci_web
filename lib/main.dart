import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:wci/views/home/home_view.dart';
import 'package:get/get.dart';

void main() {
  setPathUrlStrategy();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wrapped Carbon Initiative',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
