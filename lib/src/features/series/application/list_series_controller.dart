import 'package:get/state_manager.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/i_series_repository.dart';
import '../domain/short_serie.dart';

class ListSeriesController extends GetxController {
  ListSeriesController(this.seriesRepository);

  final ISeriesRepository seriesRepository;

  final fetchAllStatus = Rx(RxStatus.empty());

  final allSeriesFromRepository = Rxn<ShortSeriesList>();
  final searchSeriesResult = Rxn<ShortSearchSeriesList>();

  Future<void> readAllSeries(int page) async {
    fetchAllStatus.value = RxStatus.loading();

    final data = await seriesRepository.fetchAllSeries(page);

    data.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          fetchAllStatus.value = RxStatus.error();
        } else {
          fetchAllStatus.value = RxStatus.empty();
        }
      },
      (r) {
        if (allSeriesFromRepository.value != null) {
          allSeriesFromRepository.value!.series.addAll(r.series);
        } else {
          allSeriesFromRepository.value = r;
        }
        fetchAllStatus.value = RxStatus.success();
      },
    );
  }

  Future<void> search(String term) async {
    fetchAllStatus.value = RxStatus.loading();

    final data = await seriesRepository.search(term);

    data.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          fetchAllStatus.value = RxStatus.error();
        } else {
          fetchAllStatus.value = RxStatus.empty();
        }
      },
      (r) {
        searchSeriesResult.value = r;
        fetchAllStatus.value = RxStatus.success();
      },
    );
  }
}
