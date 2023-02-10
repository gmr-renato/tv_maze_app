import 'package:get/get.dart';

import 'app_routes.dart';
import 'presentation/home_binding.dart';
import 'presentation/home_page.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
