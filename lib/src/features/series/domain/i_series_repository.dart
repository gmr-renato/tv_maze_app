import 'package:dartz/dartz.dart';

import '../../../global/domain/x_failure.dart';
import 'serie.dart';
import 'short_search_series_list.dart';
import 'short_series_list.dart';

abstract class ISeriesRepository {
  Future<Either<XFailure, ShortSeriesList>> fetchByPage(int page);
  Future<Either<XFailure, ShortSearchSeriesList>> searchByName(String term);
  Future<Either<XFailure, Serie>> fetchDetails(int uid);
}
