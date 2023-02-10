import 'package:get/state_manager.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/episode.dart';
import '../domain/i_series_repository.dart';
import '../domain/serie.dart';

class SerieDetailsController extends GetxController {
  SerieDetailsController(
    this.seriesRepository,
    this.serieUid,
  );

  final ISeriesRepository seriesRepository;
  final int serieUid;
  final fetchStatus = Rx(RxStatus.empty());

  final serie = Rxn<Serie>();
  final episode = Rxn<Episode>();

  Future<void> getSerie() async {
    fetchStatus.value = RxStatus.loading();

    final data = await seriesRepository.fetchDetails(serieUid);

    data.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          fetchStatus.value = RxStatus.error();
        } else {
          fetchStatus.value = RxStatus.empty();
        }
      },
      (r) {
        serie.value = r;
        fetchStatus.value = RxStatus.success();
      },
    );
  }

  Future<void> getEpisode(int episodeUid) async {
    fetchStatus.value = RxStatus.loading();

    final data = await seriesRepository.fetchEpisodeDetails(episodeUid);

    data.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          fetchStatus.value = RxStatus.error();
        } else {
          fetchStatus.value = RxStatus.empty();
        }
      },
      (r) {
        episode.value = r;
        fetchStatus.value = RxStatus.success();
      },
    );
  }
}
