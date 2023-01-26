import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('이상형 월드컵'),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const SafeArea(
        child: Text('Home'),
      ),
    );
  }
}