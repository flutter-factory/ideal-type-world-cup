import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:ideal_type_world_cup/ui/home/home_page.dart';
import 'package:ideal_type_world_cup/ui/ranking/ranking_page.dart';
import 'package:ideal_type_world_cup/ui/world_cup/world_cup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: FlexThemeData.light(scheme: FlexScheme.mallardGreen),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mallardGreen),
      themeMode: ThemeMode.system,
      initialRoute: HomePage.routeName,
      getPages: [
        GetPage(
            name: HomePage.routeName,
            page: () => const HomePage()
        ),
        GetPage(
            name: RankingPage.routeName,
            page: () => const RankingPage()
        ),
        GetPage(
            name: WorldCupPage.routeName,
            page: () => const WorldCupPage()
        )
      ],
    );
  }
}