import 'package:get/get.dart';

import '../features/series/application/all_series_binding.dart';
import '../features/series/presentation/all_series_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.allSeries,
      page: () => const AllSeriespage(),
      binding: AllSeriesBinding(),
    ),
  ];
}
