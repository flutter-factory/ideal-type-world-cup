import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WorldCupPage extends GetView {
  static const routeName = '/world-cup/:worldCupId';
  const WorldCupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(child: Text('This is ${Get.parameters}')),
    );
  }
}