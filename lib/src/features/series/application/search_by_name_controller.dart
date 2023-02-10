import 'package:get/get.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/i_series_repository.dart';
import '../domain/short_serie.dart';

class SearchByNameController extends GetxController with StateMixin {
  SearchByNameController(this.seriesRepository);

  final ISeriesRepository seriesRepository;

  final searchSeriesResult = Rxn<ShortSeriesList>();

  Future<void> search(String term) async {
    change(RxStatus.loading());

    final data = await seriesRepository.searchByName(term);

    data.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          change(RxStatus.error());
        } else {
          change(RxStatus.empty());
        }
      },
      (r) {
        searchSeriesResult.value = r;
        change(RxStatus.success());
      },
    );
  }
}
