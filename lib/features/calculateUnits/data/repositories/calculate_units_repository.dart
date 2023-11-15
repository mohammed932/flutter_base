import 'package:dartz/dartz.dart';
import 'package:interview_test/core/usecase/base_usecase.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_area_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_floor_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_info_model.dart';
import 'package:interview_test/features/calculateUnits/domin/repositories/base_calculate_units_repository.dart';
import 'package:interview_test/features/calculateUnits/domin/usecases/store_unit_info_usecase.dart';

import '../../../../core/errors/exception.dart';
import '../../../../core/errors/failure.dart';
import '../datasources/base_calculate_units_datasource.dart';
import '../models/unit_location_model.dart';

class CalculateUnitsRepository implements BaseCalculateUnitsRepository {
  final BaseCalculateUnitsDataSource calculateUnitsDataSource;
  CalculateUnitsRepository({required this.calculateUnitsDataSource});

  @override
  Future<Either<Failure, List<UnitLocationModel>>> getUnitLocationList(
      NoParams noParams) async {
    try {
      final list = await calculateUnitsDataSource.getUnitLocationList(noParams);
      return Right(list);
    } on SereverException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on AppTimeoutException catch (e) {
      return Left(ServerFailure(message: e.message!));
    } catch (e) {
      return const Left(ServerFailure(message: 'unexpected error occured'));
    }
  }

  @override
  Future<Either<Failure, List<UnitAreaModel>>> getUnitAreaList(
      NoParams noParams) async {
    try {
      final list = await calculateUnitsDataSource.getUnitAreaList(noParams);
      return Right(list);
    } on SereverException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on AppTimeoutException catch (e) {
      return Left(ServerFailure(message: e.message!));
    } catch (e) {
      return const Left(ServerFailure(message: 'unexpected error occured'));
    }
  }

  @override
  Future<Either<Failure, List<UnitFloorModel>>> getUnitFloorList(
      NoParams noParams) async {
    try {
      final list = await calculateUnitsDataSource.getUnitFloorList(noParams);
      return Right(list);
    } on SereverException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on AppTimeoutException catch (e) {
      return Left(ServerFailure(message: e.message!));
    } catch (e) {
      return const Left(ServerFailure(message: 'unexpected error occured'));
    }
  }

  @override
  Future<Either<Failure, UnitInfoModel>> storeUnitInfo(
      StoreUnitInfoParams storeUnitInfoParams) async {
    try {
      final list =
          await calculateUnitsDataSource.storeUnitInfo(storeUnitInfoParams);
      return Right(list);
    } on SereverException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on AppTimeoutException catch (e) {
      return Left(ServerFailure(message: e.message!));
    } catch (e) {
      return const Left(ServerFailure(message: 'unexpected error occured'));
    }
  }
}
