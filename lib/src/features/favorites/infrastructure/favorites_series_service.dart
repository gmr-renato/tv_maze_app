import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../global/domain/x_failure.dart';
import '../../series/domain/short_serie.dart';
import '../domain/i_favorites_series_service.dart';

class FavoritesSeriesService extends ChangeNotifier
    implements IFavoritesSeriesService {
  FavoritesSeriesService();

  @override
  Future<Either<XFailure, List<ShortSerie>>> readFavorites() async {
    try {
      List<ShortSerie> favoritesSeriesList = <ShortSerie>[];

      final prefs = await SharedPreferences.getInstance();
      final favoritesJson = prefs.getString('favorites');

      favoritesSeriesList = List<Map<String, dynamic>>.from(
        json.decode(favoritesJson!) as Iterable<dynamic>,
      ).map((favoriteJson) {
        return ShortSerie.fromMap(favoriteJson);
      }).toList();
      notifyListeners();

      return right(favoritesSeriesList);
    } catch (e) {
      return left(XFailure.unexpected(object: e));
    }
  }

  @override
  Future<Either<XFailure, List<Map<String, dynamic>>>> addToFavorites(
    ShortSerie serie,
  ) async {
    try {
      final currentFavoritesSeries = await readFavorites();
      final newFavoritesList = <Map<String, dynamic>>[];

      currentFavoritesSeries.fold(
        (l) {
          newFavoritesList.add(serie.toMap(serie));
          notifyListeners();
          _saveFavorites(newFavoritesList);

          return right(newFavoritesList);
        },
        (r) {
          for (int i = 0; i < r.length; i++) {
            if (r[i].uid != serie.uid) {
              newFavoritesList.add(serie.toMap(serie));
              notifyListeners();
              _saveFavorites(newFavoritesList);
            }
          }
        },
      );

      return right(newFavoritesList);
    } catch (e) {
      return left(XFailure.unexpected(object: e));
    }
  }

  @override
  Future<Either<XFailure, List<Map<String, dynamic>>>> remove(
    ShortSerie serie,
  ) async {
    try {
      final currentFavoritesSeries = await readFavorites();
      final newFavoritesList = <Map<String, dynamic>>[];

      currentFavoritesSeries.fold(
        (l) => left(const XFailure.serverError()),
        (r) {
          print('antes ${r.length}');
          for (final favorite in r) {
            if (favorite != serie) {
              newFavoritesList.add(favorite.toMap(favorite));
            }
          }
          _saveFavorites(newFavoritesList);
          notifyListeners();
          print('depois ${r.length}');

          return right(newFavoritesList);
        },
      );

      return right(newFavoritesList);
    } catch (e) {
      return left(XFailure.unexpected(object: e));
    }
  }

  Future<void> _saveFavorites(List<Map<String, dynamic>> newList) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('favorites', json.encode(newList));
  }
}
