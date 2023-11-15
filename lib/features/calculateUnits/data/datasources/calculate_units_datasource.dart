import 'package:interview_test/core/usecase/base_usecase.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_area_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_location_model.dart';

import '../../../../core/network/network_interface.dart';
import 'base_calculate_units_datasource.dart';

class CalculateUnitDataSource implements BaseCalculateUnitsDataSource {
  final BaseNetwork network;
  CalculateUnitDataSource({required this.network});

  @override
  Future<List<UnitLocationModel>> getUnitLocationList(
      NoParams loginParams) async {
    await Future.delayed(Duration(seconds: 1));
    return jsonList
        .map<UnitLocationModel>((e) => UnitLocationModel.fromJson(e))
        .toList();
  }

  @override
  Future<List<UnitAreaModel>> getUnitAreaList(NoParams loginParams) async {
    await Future.delayed(Duration(seconds: 1));
    return jsonList
        .map<UnitAreaModel>((e) => UnitAreaModel.fromJson(e))
        .toList();
  }
}

List<Map<String, dynamic>> jsonList = List.generate(3, (index) => json);
Map<String, dynamic> json = {
  "id": 1,
  "name": "Comapny Name",
};
