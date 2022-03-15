import 'package:wovenlog_layered/domain/model/spot/spot_request_model.dart';

// Spot Form Model（全てStringのモデル）
// SpotPostScreenでInputFormに入力された内容を保持
// Backendに渡すまでに、SpotRequestModelに変換する

class SpotFormModel {
  SpotFormModel({
    required this.name,
    required this.address,
    required this.url,
    required this.categoryName,
    required this.description,
    // required this.imagePath,
  });

  final String name;
  final String address;
  final String url;
  final String categoryName;
  final String description;
  // final String imagePath;

  // ViewからDomain（RequestModel）へ変換
  SpotRequestModel getSpotToDomain() {
    return SpotRequestModel(
      name: name,
      address: address,
      url: url,
      categoryName: categoryName,
      description: description,
      imagePath: 'test',
    );
  }
}
