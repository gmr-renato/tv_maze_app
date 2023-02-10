import 'package:dartz/dartz.dart';

import '../../../global/domain/x_failure.dart';
import 'episode.dart';
import 'serie.dart';
import 'short_serie.dart';

abstract class ISeriesRepository {
  Future<Either<XFailure, ShortSeriesList>> fetchByPage(int page);
  Future<Either<XFailure, ShortSeriesList>> searchByName(String term);
  Future<Either<XFailure, Serie>> fetchDetails(int uid);
  Future<Either<XFailure, Episode>> fetchEpisodeDetails(int uid);
}
