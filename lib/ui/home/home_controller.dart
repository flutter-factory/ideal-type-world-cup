import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideal_type_world_cup/constants/constants.dart';
import 'package:ideal_type_world_cup/constants/paged_filter_operator.dart';
import 'package:ideal_type_world_cup/models/models.dart';
import 'package:ideal_type_world_cup/services/ideal_type_world_cup_service.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final _pagingController =
      PagingController<int, IdealTypeWorldCup>(firstPageKey: 0);
  final _idealTypeWorldCupService = Get.find<IdealTypeWorldCupService>();
  final _pageSize = 10;
  final _homeTabs = [
    Tab(
      child: Text(MediaType.all.displayName),
    ),
    Tab(
      child: Text(MediaType.image.displayName),
    ),
    Tab(
      child: Text(MediaType.video.displayName),
    )
  ];
  late TabController _tabController;

  TabController get tabController => _tabController;
  PagingController<int, IdealTypeWorldCup> get pagingController =>
      _pagingController;
  List<Tab> get homeTabs => _homeTabs;

  Future<void> _fetchWorldCups(int pageKey) async {
    final newWorldCupItems =
        await _idealTypeWorldCupService.getIdealTypeWorldCups({
      'page': (pageKey ~/ _pageSize + 1).toString(),
      'limit': _pageSize.toString(),
      'filter.mediaType':
          '${PagedFilterOperator.EQ.displayName}:${MediaType.image.displayName}'
    });
    final hasMore = newWorldCupItems?.length == _pageSize;
    if (hasMore) {
      _pagingController.appendPage(
        newWorldCupItems!,
        pageKey + newWorldCupItems.length,
      );
    } else {
      _pagingController.appendLastPage(newWorldCupItems!);
    }
  }

  @override
  void onInit() {
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        print(_tabController.reactive.value);
      }
    });

    _pagingController.addPageRequestListener((pageKey) {
      _fetchWorldCups(pageKey);
    });
    super.onInit();
  }

  @override
  void onClose() {
    _tabController.dispose();
    super.onClose();
  }
}
