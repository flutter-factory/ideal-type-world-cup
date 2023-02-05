import 'package:ideal_type_world_cup/models/ideal_type_world_cup.dart';
import 'package:ideal_type_world_cup/models/paged/paged.dart';
import 'package:ideal_type_world_cup/services/http_service.dart';

class IdealTypeWorldCupService extends HttpService {
  final String resource = '/ideal-type-world-cup';

  Future<List<IdealTypeWorldCup>?> getIdealTypeWorldCups(
    Map<String, String>? query,
  ) async {
    final response = await get(resource, query: query);

    print(response.body);
    return Paged.fromJson(
      response.body as Map<String, dynamic>,
      (json) => IdealTypeWorldCup.fromJsonModel(json),
    ).data;
  }

  Future<IdealTypeWorldCup?> getIdealTypeWorldCup(int id) async {
    final response = await get('$resource/$id');
    return IdealTypeWorldCup.fromJson(response.body as Map<String, dynamic>);
  }
}
