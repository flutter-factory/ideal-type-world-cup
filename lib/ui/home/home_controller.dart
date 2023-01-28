import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideal_type_world_cup/models/models.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
  final _pagingController = PagingController(firstPageKey: 0);
  final _pageSize = 10;
  late TabController _tabController;

  TabController get tabController => _tabController;
  PagingController get pagingController => _pagingController;

  _fetchWorldCups(int pageKey) async {
    await Future.delayed(const Duration(seconds: 1));
    var newWorldCupItems = List<IdealTypeWorldCup>.generate(10, (index) => IdealTypeWorldCup(idealTypeWorldCupId: pageKey + index));
    final hasMore = newWorldCupItems.length == _pageSize;
    if (hasMore) {
      _pagingController.appendPage(newWorldCupItems, pageKey + newWorldCupItems.length);
    } else {
      _pagingController.appendLastPage(newWorldCupItems);
    }
}

  @override
  void onInit() {
    _tabController = TabController(vsync: this, length: 3);
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