import 'package:get/state_manager.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/i_series_repository.dart';
import '../domain/short_serie.dart';

class AllSeriesController extends GetxController with StateMixin {
  AllSeriesController(this.seriesRepository);

  int _currentPage = 0;

  final ISeriesRepository seriesRepository;

  final allSeriesFromRepository = Rxn<ShortSeriesList>();
  final fetchMoreStatus = Rx<RxStatus>(RxStatus.empty());

  @override
  void onInit() {
    super.onInit();
    _initialFetch();
  }

  Future<void> _initialFetch() async {
    change(null, status: RxStatus.loading());

    final result = await seriesRepository.fetchAll(_currentPage);

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
    change(null, status: RxStatus.error());
  }

  void tryInitialFetchAgain() => _initialFetch();

  Future<void> fetchMore() async {
    if (allSeriesFromRepository.value == null) {
      fetchMoreStatus.value = RxStatus.error('Cannot fetch more');
    } else {
      fetchMoreStatus.value = RxStatus.loading();

      final int newPage = _currentPage + 1;

      final result = await seriesRepository.fetchAll(newPage);

      result.fold(
        (l) {
          if (l == const XFailure.serverError()) {
            fetchMoreStatus.value = RxStatus.error();
          } else {
            fetchMoreStatus.value = RxStatus.empty();
          }
        },
        (r) {
          allSeriesFromRepository.value!.series.addAll(r.series);
          _currentPage = newPage;
          fetchMoreStatus.value = RxStatus.success();
        },
      );
    }
  }
}
