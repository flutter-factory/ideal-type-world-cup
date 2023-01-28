import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideal_type_world_cup/ui/home/home_controller.dart';
import 'package:getwidget/getwidget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeListView extends StatelessWidget {
  final controller = Get.find<HomeController>();
  HomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(child:
            PagedListView(
                pagingController: controller.pagingController,
                builderDelegate: PagedChildBuilderDelegate(
                  itemBuilder: (context, item, index) => GFCard(
                    boxFit: BoxFit.cover,
                    titlePosition: GFPosition.end,
                    image: Image.network('https://thumbs.gfycat.com/GreedyCalmGrackle-poster.jpg',
                      height: mediaQuery.size.height * 0.2,
                      width: mediaQuery.size.width,
                      fit: BoxFit.cover,
                    ),
                    showImage: true,
                    title: const GFListTile(
                      titleText: '남돌 이상형 월드컵(움짤)',
                      subTitleText: '남자 아이돌/오로지 \'얼굴\'만 보고 판단하세요.',
                    ),
                    buttonBar: GFButtonBar(
                      children: <GFButton>[
                        GFButton(
                          onPressed: () { Get.toNamed('/world-cup/${1}'); },
                          text: '시작하기',
                          icon: const Icon(Icons.start, color: Colors.white),
                          textStyle: const TextStyle(color: Colors.white),
                          shape: GFButtonShape.pills,
                          color: Colors.redAccent,
                        ),
                        GFButton(
                          onPressed: () { Get.toNamed('/ranking/${1}'); },
                          text: '랭킹보기',
                          icon: const Icon(Icons.list, color: Colors.white),
                          textStyle: const TextStyle(color: Colors.white),
                          shape: GFButtonShape.pills,
                          color: theme.colorScheme.secondary,
                        ),
                        GFButton(
                          onPressed: () { GFToast.showToast('클립보드에 링크가 복사되었습니다.', context); },
                          text: '공유',
                          icon: const Icon(Icons.share, color: Colors.white),
                          textStyle: const TextStyle(color: Colors.white),
                          shape: GFButtonShape.pills,
                          color: theme.colorScheme.primary,
                        ),
                      ],
                    ),
                  )
                )
            )
        )
      ]
    );
  }
}
