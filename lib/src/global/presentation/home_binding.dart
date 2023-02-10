import 'package:get/get.dart';

import '../../features/series/application/list_series_controller.dart';
import '../../features/series/infrastructure/series_repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ListSeriesController(SeriesRepository()),
    );
  }
}
