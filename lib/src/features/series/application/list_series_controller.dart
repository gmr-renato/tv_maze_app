import 'package:get/state_manager.dart';
import 'package:injectable/injectable.dart';

import '../domain/i_series_repository.dart';

@injectable
class ListSeriesController extends GetxController {
  ListSeriesController(this.seriesRepository);

  final ISeriesRepository seriesRepository;
  final fetchStatus = RxStatus.empty();
}
