import 'package:get/get.dart';
import 'package:ideal_type_world_cup/services/ideal_type_world_cup_service.dart';

export 'http_service.dart';
export 'ideal_type_world_cup_service.dart';

Future<void> initServices() async {
  Get.put(IdealTypeWorldCupService());
}
