import 'dart:developer';

import 'package:interview_test/core/usecase/base_usecase.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_area_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_floor_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_info_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_location_model.dart';
import 'package:interview_test/features/calculateUnits/domin/usecases/store_unit_info_usecase.dart';

import '../../../../core/network/network_interface.dart';
import 'base_calculate_units_datasource.dart';

class CalculateUnitDataSource implements BaseCalculateUnitsDataSource {
  final BaseNetwork network;
  CalculateUnitDataSource({required this.network});

  @override
  Future<List<UnitLocationModel>> getUnitLocationList(NoParams noParams) async {
    await Future.delayed(Duration(seconds: 1));
    return jsonList
        .map<UnitLocationModel>((e) => UnitLocationModel.fromJson(e))
        .toList();
  }

  @override
  Future<List<UnitAreaModel>> getUnitAreaList(NoParams noParams) async {
    await Future.delayed(Duration(seconds: 1));
    return jsonList
        .map<UnitAreaModel>((e) => UnitAreaModel.fromJson(e))
        .toList();
  }

  @override
  Future<List<UnitFloorModel>> getUnitFloorList(NoParams params) async {
    return jsonList
        .map<UnitFloorModel>((e) => UnitFloorModel.fromJson(e))
        .toList();
  }

  @override
  Future<UnitInfoModel> storeUnitInfo(
      StoreUnitInfoParams storeUnitInfoParams) async {
    log("message $storeUnitInfoParams");
    return UnitInfoModel.fromJson(infoJson);
  }
}

List<Map<String, dynamic>> jsonList = List.generate(
    3,
    (index) => {
          "id": index,
          "name": "Comapny Name $index",
        });
Map<String, dynamic> infoJson = {
  "unit_name": "Your Unit Name",
  "unit_type": "Your Unit Type",
  "unit_location": {"id": 1, "name": "Company Location"},
  "unit_area": {"id": 2, "name": "Company Area"},
  "unit_floor": {
    // Assuming UnitFloorModel has 'id' and 'name' properties
    "id": 3,
    "name": "Ground Floor"
  }
};
