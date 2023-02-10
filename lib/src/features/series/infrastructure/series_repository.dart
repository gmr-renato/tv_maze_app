import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../global/constants/constants.dart';
import '../../../global/domain/x_failure.dart';
import '../domain/episode.dart';
import '../domain/i_series_repository.dart';
import '../domain/serie.dart';
import '../domain/short_episode.dart';
import '../domain/short_serie.dart';

class SeriesRepository implements ISeriesRepository {
  final Dio dio = Dio();
  @override
  Future<Either<XFailure, ShortSeriesList>> fetchByPage(int page) async {
    ShortSeriesList? series;
    try {
      final response = await dio.get(
        '${Constants.baseApiUrl}${Constants.showsEndPoint}',
        queryParameters: {
          'page': page,
        },
      );

      if (response.data != null) {
        series = ShortSeriesList.fromJson(
          response.data as List<dynamic>,
        );
      } else {
        return left(const XFailure.unexpected());
      }

      return right(series);
    } catch (e) {
      return left(const XFailure.serverError());
    }
  }

  @override
  Future<Either<XFailure, ShortSeriesList>> searchByName(
    String term,
  ) async {
    ShortSeriesList? series;
    try {
      final response = await dio.get(
        '${Constants.baseApiUrl}${Constants.searchShowsEndPoint}$term',
      );

      if (response.data != null) {
        series = ShortSeriesList.fromJson(
          response.data as List<dynamic>,
        );
      } else {
        return left(const XFailure.unexpected());
      }

      return right(series);
    } catch (e) {
      return left(const XFailure.serverError());
    }
  }

  @override
  Future<Either<XFailure, Serie>> fetchDetails(int uid) async {
    try {
      final Response<dynamic> response = await dio.get(
        '${Constants.baseApiUrl}${Constants.showsEndPoint}/$uid',
      );

      if (response.data != null) {
        final episodesResponse = await _getEpisodesList(uid);

        return episodesResponse.fold(
          (l) {
            final shortEpisodesList = <ShortEpisode>[];

            return right(
              Serie.fromJson(
                response.data! as Map<String, dynamic>,
                shortEpisodesList,
              ),
            );
          },
          (r) {
            return right(
              Serie.fromJson(
                response.data! as Map<String, dynamic>,
                r.episodesList,
              ),
            );
          },
        );
      } else {
        return left(const XFailure.unexpected());
      }
    } catch (e) {
      return left(const XFailure.serverError());
    }
  }

  Future<Either<XFailure, ShortEpisodeList>> _getEpisodesList(
    int uid,
  ) async {
    ShortEpisodeList? shortEpsodesList;
    try {
      final episodesResponse = await dio.get(
        '${Constants.baseApiUrl}${Constants.showsEndPoint}/$uid${Constants.episodesEndPoint}',
      );

      if (episodesResponse.data != null) {
        shortEpsodesList = ShortEpisodeList.fromJson(
          episodesResponse.data as List<dynamic>,
        );
      } else {
        return left(const XFailure.unexpected());
      }

      return right(shortEpsodesList);
    } catch (e) {
      return left(const XFailure.serverError());
    }
  }

  @override
  Future<Either<XFailure, Episode>> fetchEpisodeDetails(int uid) async {
    try {
      final Response<Map<String, dynamic>> episodesResponse = await dio.get(
        '${Constants.baseApiUrl}${Constants.episodesEndPoint}$uid',
      );

      if (episodesResponse.data != null) {
        return right(Episode.fromJson(episodesResponse.data!));
      } else {
        return left(const XFailure.unexpected());
      }
    } catch (e) {
      return left(const XFailure.serverError());
    }
  }
}
