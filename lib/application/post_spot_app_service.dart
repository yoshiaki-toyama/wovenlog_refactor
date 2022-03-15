import 'package:wovenlog_layered/domain/model/spot/spot_model.dart';
import 'package:wovenlog_layered/domain/model/spot/spot_service.dart';
import 'package:wovenlog_layered/domain/repository_interface/spot_repository_interface.dart';
import 'package:wovenlog_layered/domain/model/spot/spot_request_model.dart';

// 「新しいSpotを登録する」というユースケースで表現するべきこと：
// 1. 与えられたSpot情報で新しくSpotインスタンスを生成
// 2. Spot名が重複しないかを確認
// 3. 重複した場合は例外を投げ、重複しなかった場合はリポジトリにSpotを登録

class PostSpotAppService {
  // addNewSpotの引数に一つのリクエストモデルを渡す
  static Future<void> addNewSpot(
    String id,
    String spotName,
    String address,
    String url,
    String categoryName,
    String description,
    String imagePath,
    SpotInterface spotListRepository, // dummyのリポジトリを引数に取る
  ) async {
    // 1. 新しいSpotインスタンスを生成
    Spot newSpot = Spot(
      id: id, // TODO: IDいらない
      name: spotName,
      address: address,
      url: url,
      categoryName: categoryName,
      description: description,
      imagePath: imagePath,
    );

    // spotServiceインスタンスを生成（SpotInterfaceをimplementsしたリポジトリを引数に取る）
    var spotService = SpotService(spotListRepository: spotListRepository);

    // 2. Spot名が重複しないことを確認
    if (await spotService.isDuplicated(newSpot.name)) {
      throw const FormatException('New spot name is duplicated.');
    } else {
      // 3. 保存処理を実行
      spotListRepository.saveNewSpot(newSpot);
    }
  }
}
