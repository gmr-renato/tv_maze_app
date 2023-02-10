import 'package:dartz/dartz.dart';

import '../../../global/domain/x_failure.dart';
import 'episode.dart';
import 'serie.dart';
import 'short_serie.dart';

abstract class ISeriesRepository {
  Future<Either<XFailure, ShortSeriesList>> fetchAllSeries(int page);
  Future<Either<XFailure, ShortSearchSeriesList>> search(String term);
  Future<Either<XFailure, Serie>> fetchSerieDetails(int uid);
  Future<Either<XFailure, Episode>> fetchEpisodeDetails(int uid);
}
