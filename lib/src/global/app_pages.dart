import 'package:get/get.dart';

import '../features/series/application/all_series_binding.dart';
import '../features/series/application/search_by_name_binding.dart';
import '../features/series/application/serie_details_binding.dart';
import '../features/series/presentation/all_series_page.dart';
import '../features/series/presentation/search_series_page.dart';
import '../features/series/presentation/serie_details_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.allSeries,
      page: () => const AllSeriespage(),
      binding: AllSeriesBinding(),
    ),
    GetPage(
      name: '${AppRoutes.serieDetails}:uid',
      page: () => const SerieDetailsPage(),
      binding: SerieDetailsBinding(),
    ),
    GetPage(
      name: AppRoutes.searchSeries,
      page: () => const SearchSeriespage(),
      binding: SearchByNameBinding(),
    ),
  ];
}
