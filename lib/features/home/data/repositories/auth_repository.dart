import 'package:dartz/dartz.dart';

import '../../../../core/errors/exception.dart';
import '../../../../core/errors/failure.dart';
import '../../domin/repositories/base_home_repository.dart';
import '../datasources/base_home_datasource.dart';
import '../models/carousel_model.dart';

class HomeRepository implements BaseHomeRepository {
  final BaseHomeDataSource homeDataSource;
  HomeRepository({required this.homeDataSource});

  @override
  Future<Either<Failure, List<CarouselModel>>> getCarouselList() async {
    try {
      final products = await homeDataSource.getCarouselList();
      return Right(products);
    } on SereverException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on AppTimeoutException catch (e) {
      return Left(ServerFailure(message: e.message!));
    } catch (e) {
      return const Left(ServerFailure(message: 'unexpected error occured'));
    }
  }
}
