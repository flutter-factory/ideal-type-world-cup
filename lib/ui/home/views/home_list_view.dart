import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:ideal_type_world_cup/models/ideal_type_world_cup.dart';
import 'package:ideal_type_world_cup/ui/home/home_controller.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeListView extends StatelessWidget {
  final controller = Get.find<HomeController>();
  HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Column(
      children: [
        Expanded(
          child: PagedListView<int, IdealTypeWorldCup>(
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, item, index) => GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.end,
                image: Image.network(
                  item.thumbnailUrl ??
                      'https://thumbs.gfycat.com/GreedyCalmGrackle-poster.jpg',
                  height: mediaQuery.size.height * 0.2,
                  width: mediaQuery.size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  titleText: item.title,
                  subTitleText: item.description,
                ),
                buttonBar: GFButtonBar(
                  children: <GFButton>[
                    GFButton(
                      onPressed: () {
                        Get.toNamed('/world-cup/${item.idealTypeWorldCupId}');
                      },
                      text: '시작하기',
                      icon: const Icon(Icons.start, color: Colors.white),
                      textStyle: const TextStyle(color: Colors.white),
                      shape: GFButtonShape.pills,
                      color: Colors.redAccent,
                    ),
                    GFButton(
                      onPressed: () {
                        Get.toNamed('/ranking/${item.idealTypeWorldCupId}');
                      },
                      text: '랭킹보기',
                      icon: const Icon(Icons.list, color: Colors.white),
                      textStyle: const TextStyle(color: Colors.white),
                      shape: GFButtonShape.pills,
                      color: theme.colorScheme.secondary,
                    ),
                    GFButton(
                      onPressed: () {
                        GFToast.showToast('클립보드에 링크가 복사되었습니다.', context);
                      },
                      text: '공유',
                      icon: const Icon(Icons.share, color: Colors.white),
                      textStyle: const TextStyle(color: Colors.white),
                      shape: GFButtonShape.pills,
                      color: theme.colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
