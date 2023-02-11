import 'package:dartz/dartz.dart';

import '../../../global/domain/x_failure.dart';
import '../../series/domain/short_serie.dart';

abstract class IFavoritesSeriesService {
  Future<Either<XFailure, List<Map<String, dynamic>>>> addToFavorites(
    ShortSerie serie,
  );
  Future<Either<XFailure, List<Map<String, dynamic>>>> remove(ShortSerie serie);
  Future<Either<XFailure, List<ShortSerie>>> readFavorites();
}
