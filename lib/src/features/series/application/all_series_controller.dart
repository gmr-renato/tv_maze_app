import 'package:get/state_manager.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/i_series_repository.dart';
import '../domain/short_serie.dart';

class AllSeriesController extends GetxController with StateMixin {
  AllSeriesController(this.seriesRepository);

  final ISeriesRepository seriesRepository;

  final seriesByPage = Rx<Map<int, ShortSeriesList>>({});
  final fetchMoreStatus = Rx<RxStatus>(RxStatus.empty());

  final RxInt currentPage = RxInt(0);

  @override
  void onInit() {
    super.onInit();
    fetchByPage(0);
  }

  Future<void> fetchByPage(int page) async {
    change(null, status: RxStatus.loading());

    final result = await seriesRepository.fetchByPage(page);

    result.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          change(null, status: RxStatus.error());
        } else {
          change(null, status: RxStatus.empty());
        }
      },
      (r) {
        seriesByPage.value.addAll({page: r});

        change(null, status: RxStatus.success());
      },
    );
  }

  Future<void> onPageChanged(int newPage) async {
    currentPage.value = newPage;
    if (seriesByPage.value[newPage] == null) {
      await fetchByPage(newPage);
    } else {
      change(null, status: RxStatus.success());
    }
  }
}
