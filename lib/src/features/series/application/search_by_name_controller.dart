import 'package:get/get.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/i_series_repository.dart';
import '../domain/short_serie.dart';

class SearchByNameController extends GetxController with StateMixin {
  SearchByNameController(this.seriesRepository);

  final ISeriesRepository seriesRepository;

  final searchSeriesResult = Rxn<ShortSearchSeriesList>();

  @override
  void onInit() {
    super.onInit();
    change(null, status: RxStatus.empty());
  }

  Future<void> search(String term) async {
    change(null, status: RxStatus.loading());

    final data = await seriesRepository.searchByName(term);

    data.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          change(null, status: RxStatus.error());
        } else {
          change(null, status: RxStatus.empty());
        }
      },
      (r) {
        searchSeriesResult.value = r;
        change(null, status: RxStatus.success());
      },
    );

    if (term == '' ||
        searchSeriesResult.value == null ||
        searchSeriesResult.value!.series.isEmpty) {
      change(null, status: RxStatus.empty());
    }
  }
}
