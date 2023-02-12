import 'package:get/get.dart';

import '../../features/favorites/application/favorites_series_controller.dart';
import '../../features/favorites/infrastructure/favorites_series_service.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      () => FavoritesSeriesController(FavoritesSeriesService()),
    );
  }
}
