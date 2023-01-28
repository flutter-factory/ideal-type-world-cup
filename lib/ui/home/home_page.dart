import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideal_type_world_cup/ui/home/home_controller.dart';
import 'package:ideal_type_world_cup/ui/home/views/home_app_bar_view.dart';
import 'package:ideal_type_world_cup/ui/home/views/home_list_view.dart';

class HomePage extends GetView<HomeController> {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: HomeAppBarView(),
      body: SafeArea(
        child: HomeListView(),
      ),
    );
  }
}