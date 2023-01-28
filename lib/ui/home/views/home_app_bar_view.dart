import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../home_controller.dart';

class HomeAppBarView extends StatelessWidget with PreferredSizeWidget{
  final controller = Get.find<HomeController>();
  HomeAppBarView({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      leading: const GFImageOverlay(
        image: AssetImage('assets/images/trophy.png'),
        boxFit: BoxFit.contain,
        shape: BoxShape.circle,
      ),
      title: Text('이상형 월드컵', style: Theme.of(context).appBarTheme.titleTextStyle),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      bottom: TabBar(
        controller: controller.tabController,
        tabs: const [
          Tab(
            child: Text(
              '전체',
            ),
          ),
          Tab(
            child: Text(
              '사진',
            ),
          ),
          Tab(
            child: Text(
              '동영상',
            ),
          ),
        ],
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
