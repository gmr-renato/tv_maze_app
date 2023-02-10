import 'package:get/state_manager.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/i_series_repository.dart';
import '../domain/short_serie.dart';

class AllSeriesController extends GetxController {
  AllSeriesController(this.seriesRepository);

  final ISeriesRepository seriesRepository;

  final readAllStatus = Rx(RxStatus.empty());

  final allSeriesFromRepository = Rxn<ShortSeriesList>();
  final searchSeriesResult = Rxn<ShortSearchSeriesList>();

  @override
  void onInit() {
    super.onInit();
    readAllSeries(1);
  }

  Future<void> readAllSeries(int page) async {
    readAllStatus.value = RxStatus.loading();

    final result = await seriesRepository.fetchAll(page);

    result.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          readAllStatus.value = RxStatus.error();
        } else {
          readAllStatus.value = RxStatus.empty();
        }
      },
      (r) {
        if (allSeriesFromRepository.value != null) {
          allSeriesFromRepository.value!.series.addAll(r.series);
        } else {
          allSeriesFromRepository.value = r;
        }
        readAllStatus.value = RxStatus.success();
      },
    );
  }

  Future<void> search(String term) async {
    readAllStatus.value = RxStatus.loading();

    final data = await seriesRepository.searchByName(term);

    data.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          readAllStatus.value = RxStatus.error();
        } else {
          readAllStatus.value = RxStatus.empty();
        }
      },
      (r) {
        searchSeriesResult.value = r;
        readAllStatus.value = RxStatus.success();
      },
    );
  }
}
