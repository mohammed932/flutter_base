import 'package:interview_test/features/home/data/datasources/base_home_datasource.dart';

import '../../../../core/network/network_interface.dart';
import '../models/carousel_model.dart';

class HomeDataSource implements BaseHomeDataSource {
  final BaseNetwork network;
  HomeDataSource({required this.network});

  @override
  Future<List<CarouselModel>> getCarouselList() async {
    await Future.delayed(Duration(seconds: 1));
    return jsonList
        .map<CarouselModel>((e) => CarouselModel.fromJson(e))
        .toList();
  }
}

List<Map<String, dynamic>> jsonList = List.generate(3, (index) => json);
Map<String, dynamic> json = {
  "id": 1,
  "title": "Comapny Name",
  "type": "ADS",
  "image":
      "https://images.unsplash.com/photo-1506765515384-028b60a970df?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
};
