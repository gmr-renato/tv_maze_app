import 'package:get/get.dart';

import '../infrastructure/favorites_series_service.dart';
import 'favorites_series_controller.dart';

class FavoritesSeriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => FavoritesSeriesController(FavoritesSeriesService()),
    );
  }
}
