class SpotData {
  final String id;
  final String name;
  final String address;
  double? latitude;
  double? longitude;
  final String url;
  final String image;
  DateTime? createdDate;
  final String categoryId;
  final String description;

  SpotData({
    required this.id,
    required this.name,
    required this.address,
    this.latitude,
    this.longitude,
    required this.url,
    required this.image,
    this.createdDate,
    required this.categoryId,
    required this.description,
  });
}
