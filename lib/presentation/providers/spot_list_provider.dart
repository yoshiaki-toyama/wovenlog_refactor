import 'package:flutter/material.dart';
import 'package:wovenlog_layered/domain/model/spot/spot_model.dart';
import 'package:wovenlog_layered/domain/repository_interface/spot_repository_interface.dart';
import 'package:wovenlog_layered/repository/spot_list_repository.dart';

class SpotListProvider with ChangeNotifier {
  SpotListProvider() {
    _init();
  }

  List<Spot> spotList = [];
  late SpotInterface spotListRepository;

  void _init() {
    _getSpotList();
  }

  Future<void> _getSpotList() async {
    spotList = await SpotListDummyRepository().getSpotList();
    notifyListeners();
  }
}
