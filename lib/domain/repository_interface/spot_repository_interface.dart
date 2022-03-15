import 'package:wovenlog_layered/domain/model/spot/spot_model.dart';

abstract class SpotInterface {
  // getter
  Future<List<Spot>> getSpotList();

  // 新しいSpotをSpotListリポジトリに保存する
  Future<void> saveNewSpot(Spot spot);

  // 既存のSpotを削除
  Future<void> removeSpot(Spot spot);

  // Spot情報を検索
  Future<Spot?> findBySpotName(name);
}
