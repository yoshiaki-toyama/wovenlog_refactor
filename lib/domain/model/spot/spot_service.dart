import 'package:wovenlog_layered/domain/model/spot/spot_model.dart';
import 'package:wovenlog_layered/domain/repository_interface/spot_repository_interface.dart';

// Spotに関するドメインサービスを定義
// Spot名は重複させないというルールを記述

class SpotService {
  SpotService({
    required SpotInterface spotListRepository,
  }) : _spotListRepository = spotListRepository;

  final SpotInterface _spotListRepository;

  // スポット名に重複がないか確認
  Future<bool> isDuplicated(String spotName) async {
    // spotNameをリポジトリに渡す
    final Spot? searched = await _spotListRepository.findBySpotName(spotName);

    if (searched != null) {
      return true;
    } else {
      return false;
    }
  }
}
