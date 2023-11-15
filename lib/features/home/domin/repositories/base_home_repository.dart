import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../data/models/carousel_model.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, List<CarouselModel>>> getCarouselList();
}
