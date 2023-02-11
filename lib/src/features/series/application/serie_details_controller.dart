import 'package:get/get.dart';

import '../../../global/domain/x_failure.dart';
import '../domain/episode.dart';
import '../domain/i_series_repository.dart';
import '../domain/serie.dart';
import '../domain/short_serie.dart';

class SerieDetailsController extends GetxController with StateMixin {
  SerieDetailsController(
    this.seriesRepository, {
    this.serie,
  });
  int? _serieUid;

  ShortSerie? serie;

  final ISeriesRepository seriesRepository;

  final loadedSerie = Rxn<Serie>();
  final episode = Rxn<Episode>();

  @override
  void onReady() {
    super.onReady();

    _serieUid = int.tryParse(Get.parameters['uid'] ?? '');

    if (serie != null) {
      _getSerie(serie!.uid);
    } else if (_serieUid != null) {
      _getSerie(_serieUid!);
    } else {
      change(null, status: RxStatus.error('Could not get serie uid'));
    }
  }

  Future<void> _getSerie(int uid) async {
    change(null, status: RxStatus.loading());

    final data = await seriesRepository.fetchDetails(uid);

    data.fold(
      (l) {
        if (l == const XFailure.serverError()) {
          change(null, status: RxStatus.error());
        } else {
          change(null, status: RxStatus.empty());
        }
      },
      (r) {
        loadedSerie.value = r;
        change(null, status: RxStatus.success());
      },
    );
  }

  // Future<void> getEpisode(int episodeUid) async {
  //   fetchStatus.value = RxStatus.loading();

  //   final data = await seriesRepository.fetchEpisodeDetails(episodeUid);

  //   data.fold(
  //     (l) {
  //       if (l == const XFailure.serverError()) {
  //         fetchStatus.value = RxStatus.error();
  //       } else {
  //         fetchStatus.value = RxStatus.empty();
  //       }
  //     },
  //     (r) {
  //       episode.value = r;
  //       fetchStatus.value = RxStatus.success();
  //     },
  //   );
  // }
}
