import '../models/carousel_model.dart';

abstract class BaseHomeDataSource {
  Future<List<CarouselModel>> getCarouselList();
}
