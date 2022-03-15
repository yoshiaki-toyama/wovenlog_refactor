import 'package:wovenlog_layered/domain/model/spot/spot_model.dart';
import 'package:wovenlog_layered/domain/repository_interface/spot_repository_interface.dart';
import 'package:wovenlog_layered/dummy_data/spot_dummy_data.dart';
import 'package:wovenlog_layered/dummy_data/spot_data.dart';

class SpotListDummyRepository implements SpotInterface {
  @override
  Future<List<Spot>> getSpotList() async {
    List<Spot> _spotList = [];
    String _id;
    String _name;
    String _address;
    String _url;
    String _categoryName;
    String _description;
    String _imagePath;

    spotDummyData.map((element) {
      _id = element.id;
      _name = element.name;
      _address = element.address;
      _url = element.url;
      _categoryName = element.categoryId;
      _description = element.description;
      _imagePath = element.image;
      Spot spot = Spot(
        id: _id,
        name: _name,
        address: _address,
        url: _url,
        categoryName: _categoryName,
        description: _description,
        imagePath: _imagePath,
      );
      _spotList.add(spot);
    }).toList();

    return _spotList;
  }

  @override
  Future<Spot?> findBySpotName(name) async {
    SpotData? duplicatedSpot;
    for (int i = 0; i < spotDummyData.length; i++) {
      if (spotDummyData[i].name == name) {
        duplicatedSpot = spotDummyData[i];
        String? _id = duplicatedSpot.id;
        String? _name = duplicatedSpot.name;
        String? _address = duplicatedSpot.address;
        String? _url = duplicatedSpot.url;
        String? _categoryName = duplicatedSpot.categoryId;
        String? _description = duplicatedSpot.description;
        String? _imagePath = duplicatedSpot.image;

        Spot spot = Spot(
          id: _id,
          name: _name,
          address: _address,
          url: _url,
          categoryName: _categoryName,
          description: _description,
          imagePath: _imagePath,
        );
        return spot;
      } else {
        duplicatedSpot = null;
        return null;
      }
    }
  }

  @override
  Future<void> removeSpot(Spot spot) {
    // TODO: implement removeSpot
    throw UnimplementedError();
  }

  @override
  Future<void> saveNewSpot(Spot spot) {
    // TODO: implement saveNewSpot
    throw UnimplementedError();
  }
}
