import 'package:get/get.dart';

import '../../series/domain/short_serie.dart';
import '../domain/i_favorites_series_service.dart';

class FavoritesSeriesController extends GetxController with StateMixin {
  FavoritesSeriesController(this.favoritesSeriesService);

  final IFavoritesSeriesService favoritesSeriesService;

  final favoritesSeries = Rx<List<ShortSerie>>([]);
  final favoritesResults = Rx<List<ShortSerie>>([]);
  final returnMessage = Rx<String>('');

  @override
  void onInit() {
    super.onInit();
    change(null, status: RxStatus.empty());
    favoritesSeriesService.readFavorites();
  }

  Future<void> readAllFavorite() async {
    change(null, status: RxStatus.loading());
    final result = await favoritesSeriesService.readFavorites();

    result.fold(
      (l) {
        change(null, status: RxStatus.error());
      },
      (r) {
        if (r.isEmpty) {
          change(null, status: RxStatus.empty());
        } else {
          for (final serie in r) {
            favoritesSeries.value.add(serie);
          }
          change(null, status: RxStatus.success());
        }
      },
    );
  }

  Future<void> addSerieToFavorite(ShortSerie serie) async {
    change(null, status: RxStatus.loading());

    final result = await favoritesSeriesService.addToFavorites(serie);

    result.fold(
      (l) {
        returnMessage.value = 'Failed to save to favorites. $l';
        change(null, status: RxStatus.error());
      },
      (r) {
        returnMessage.value = 'Success to save to favorites.';
        change(null, status: RxStatus.success());
      },
    );
  }

  Future<void> removeSerie(ShortSerie serie) async {
    change(null, status: RxStatus.loading());

    final result = await favoritesSeriesService.addToFavorites(serie);

    result.fold(
      (l) {
        returnMessage.value = 'Failed to delete to favorites. $l';
        change(null, status: RxStatus.error());
      },
      (r) {
        returnMessage.value = 'Success to delete to favorites.';
        change(null, status: RxStatus.success());
      },
    );
  }

  Future<void> searchFavorites(String query) async {
    change(null, status: RxStatus.loading());

    for (int index = 0; index < favoritesSeries.value.length; index++) {
      if (favoritesSeries.value[index].name!.toLowerCase().contains(query)) {
        favoritesResults.value.add(favoritesSeries.value[index]);
      }
    }

    favoritesResults.value.isEmpty
        ? change(null, status: RxStatus.empty())
        : change(null, status: RxStatus.success());
  }
}
