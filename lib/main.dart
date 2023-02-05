import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideal_type_world_cup/services/services.dart';
import 'package:ideal_type_world_cup/ui/home/home_binding.dart';
import 'package:ideal_type_world_cup/ui/home/home_page.dart';
import 'package:ideal_type_world_cup/ui/ranking/ranking_page.dart';
import 'package:ideal_type_world_cup/ui/world_cup/world_cup_page.dart';

void main() async {
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: FlexThemeData.light(
        scheme: FlexScheme.bigStone,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 9,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: 'NotoSansKR',
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.bigStone,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 15,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      ),
      // themeMode: ThemeMode.system,
      initialRoute: HomePage.routeName,
      getPages: [
        GetPage(
            name: HomePage.routeName,
            page: () => const HomePage(),
            binding: HomeBinding()),
        GetPage(name: RankingPage.routeName, page: () => const RankingPage()),
        GetPage(name: WorldCupPage.routeName, page: () => const WorldCupPage())
      ],
    );
  }
}
