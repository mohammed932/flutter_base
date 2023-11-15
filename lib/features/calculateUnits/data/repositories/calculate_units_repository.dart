import 'package:dartz/dartz.dart';
import 'package:interview_test/core/usecase/base_usecase.dart';
import 'package:interview_test/features/authentication/data/datasources/base_auth_datasource.dart';
import 'package:interview_test/features/authentication/domin/repositories/base_login_repository.dart';
import 'package:interview_test/features/calculateUnits/domin/repositories/base_calculate_units_repository.dart';

import '../../../../core/errors/exception.dart';
import '../../../../core/errors/failure.dart';
import '../datasources/base_calculate_units_datasource.dart';
import '../models/unit_location_model.dart';
 

class CalculateUnitsRepository implements BaseCalculateUnitsRepository {
  final BaseCalculateUnitsDataSource calculateUnitsDataSource;
  CalculateUnitsRepository({required this.calculateUnitsDataSource});

  @override
 Future<Either<Failure, List<UnitLocationModel>>> getUnitLocationList(NoParams noParams) async {
    try {
      final products = await calculateUnitsDataSource.getUnitLocationList(noParams);
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
