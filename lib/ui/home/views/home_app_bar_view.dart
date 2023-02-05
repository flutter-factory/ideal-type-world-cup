import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../home_controller.dart';

class HomeAppBarView extends StatelessWidget with PreferredSizeWidget {
  final controller = Get.find<HomeController>();
  HomeAppBarView({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      leading: const GFImageOverlay(
        image: AssetImage('lib/assets/images/trophy.png'),
        boxFit: BoxFit.contain,
        shape: BoxShape.circle,
      ),
      title:
          Text('이상형 월드컵', style: Theme.of(context).appBarTheme.titleTextStyle),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      bottom: TabBar(
        controller: controller.tabController,
        tabs: controller.homeTabs,
      ),
      actions: <Widget>[
        GFIconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
          type: GFButtonType.transparent,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}
