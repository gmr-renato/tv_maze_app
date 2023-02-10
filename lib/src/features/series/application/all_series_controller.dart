import 'package:get/state_manager.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/i_series_repository.dart';
import '../domain/short_serie.dart';

class AllSeriesController extends GetxController with StateMixin {
  AllSeriesController(this.seriesRepository);

  final ISeriesRepository seriesRepository;

  final allSeriesFromRepository = Rxn<ShortSeriesList>();
  final searchSeriesResult = Rxn<ShortSeriesList>();

  @override
  void onInit() {
    super.onInit();
    readAllSeries(1);
  }

  Future<void> readAllSeries(int page) async {
    change(null, status: RxStatus.loading());

    final result = await seriesRepository.fetchAll(page);

    result.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          change(null, status: RxStatus.error());
        } else {
          change(null, status: RxStatus.empty());
        }
      },
      (r) {
        if (allSeriesFromRepository.value != null) {
          allSeriesFromRepository.value!.series.addAll(r.series);
        } else {
          allSeriesFromRepository.value = r;
        }
        change(null, status: RxStatus.success());
      },
    );
  }
}
