import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/i_series_repository.dart';
import '../domain/serie.dart';

@LazySingleton(as: ISeriesRepository)
class SerieRepository implements ISeriesRepository {
  @override
  Future<Either<XFailure, List<Serie>>> fetchAllSeries() {
    // TODO: implement fetchAllSeries
    throw UnimplementedError();
  }

  @override
  Future<Either<XFailure, Serie>> fetchSerieDetails() {
    // TODO: implement fetchSerieDetails
    throw UnimplementedError();
  }
}
