// Spot Domain Model
// BackendでIDを付与されたSpotModel

class Spot {
  Spot({
    required this.id,
    required this.name,
    required this.address,
    required this.url,
    required this.categoryName,
    required this.description,
    required this.imagePath,
  });

  final String id;
  final String name;
  final String address;
  final String url;
  final String categoryName;
  final String description;
  final String imagePath;
}
