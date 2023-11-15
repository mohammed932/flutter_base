import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../../data/models/carousel_model.dart';
import '../repositories/base_home_repository.dart';

class GetCurouselListUsecase
    extends BaseUseCase<List<CarouselModel>, NoParams> {
  final BaseHomeRepository repository;
  GetCurouselListUsecase({required this.repository});
  @override
  Future<Either<Failure, List<CarouselModel>>> call(NoParams params) async {
    return await repository.getCarouselList();
  }
}
