// バックエンドにSpotForm情報を送信するためのModel
// idはない状態
// このModelを、PostSpotAppServiceで読む

class SpotRequestModel {
  SpotRequestModel({
    required this.name,
    required this.address,
    required this.url,
    required this.categoryName,
    required this.description,
    required this.imagePath,
  });

  final String name;
  final String address;
  final String url;
  final String categoryName;
  final String description;
  final String imagePath;
}
