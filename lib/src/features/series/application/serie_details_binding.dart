import 'package:get/get.dart';

import '../infrastructure/series_repository.dart';
import 'serie_details_controller.dart';

class SerieDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SerieDetailsController(SeriesRepository()),
    );
  }
}
