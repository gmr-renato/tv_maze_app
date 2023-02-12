import 'package:get/get.dart';

import '../infrastructure/series_repository.dart';
import 'search_by_name_controller.dart';

class SearchByNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SearchByNameController(SeriesRepository()),
    );
  }
}
