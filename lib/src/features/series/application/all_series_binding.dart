import 'package:get/get.dart';

import '../infrastructure/series_repository.dart';
import 'all_series_controller.dart';

class AllSeriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AllSeriesController(SeriesRepository()),
    );
  }
}
