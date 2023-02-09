import 'package:dartz/dartz.dart';

import '../../../global/domain/x_failure.dart';
import 'serie.dart';

abstract class ISeriesRepository {
  Future<Either<XFailure, List<Serie>>> fetchAllSeries();

  Future<Either<XFailure, Serie>> fetchSerieDetails();
}
