import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../../../../design_system/theme/ds_spacing.dart';
import '../../../global/app_strings.dart';
import '../../../global/constants/constants.dart';
import '../../../global/presentation/global_presentation_constants.dart';
import '../../../global/presentation/loading_with_message.dart';
import '../../../global/presentation/message_and_retry.dart';
import '../../favorites/application/favorites_series_controller.dart';
import '../../favorites/infrastructure/favorites_series_service.dart';
import '../application/serie_details_controller.dart';
import '../domain/short_serie.dart';
import '../infrastructure/series_repository.dart';
import 'widgets/poster_gradient_bar.dart';
import 'widgets/poster_image.dart';
import 'widgets/poster_name_and_favorite_bar.dart';
import 'widgets/serie_details.dart';

/// Open this page from [SerieListTile] to achieve a cool navigation animation.
class SerieDetailsPageAnimated extends StatefulWidget {
  const SerieDetailsPageAnimated({
    super.key,
    required this.serie,
  });

  final ShortSerie serie;

  @override
  State<SerieDetailsPageAnimated> createState() =>
      _SerieDetailsPageAnimatedState();
}

class _SerieDetailsPageAnimatedState extends State<SerieDetailsPageAnimated> {
  double elementOpacity = 0;

  @override
  void initState() {
    super.initState();

    Get.lazyPut(
      () => SerieDetailsController(
        SeriesRepository(),
        serie: widget.serie,
      ),
    );
    Get.lazyPut(
      () => FavoritesSeriesController(
        FavoritesSeriesService(),
      ),
    );
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => Future.delayed(GlobalPresentationConstants.pageTransitionDuration)
          .then(
        (value) => setState(() => elementOpacity = 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView(
          children: [
            Stack(
              children: [
                Hero(
                  tag: widget.serie.imageUrl ?? Constants.placeholderImage,
                  child: PosterImage(
                    imageUrl:
                        widget.serie.imageUrl ?? Constants.placeholderImage,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AnimatedOpacity(
                    opacity: elementOpacity,
                    curve: Curves.easeInOut,
                    duration:
                        GlobalPresentationConstants.pageTransitionDuration,
                    child: const PosterGradientBar(),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: AnimatedOpacity(
                    opacity: elementOpacity,
                    curve: Curves.easeInOut,
                    duration:
                        GlobalPresentationConstants.pageTransitionDuration,
                    child: PosterNameAndFavoriteBar(
                      serieName: widget.serie.name!,
                      addToFavoritesAction: () {
                        // TODO
                      },
                    ),
                  ),
                ),
              ],
            ),
            GetBuilder<SerieDetailsController>(
              builder: (controller) {
                return controller.obx(
                  (state) => SerieDetails(
                    serie: controller.loadedSerie.value!,
                  ),
                  onError: (error) => Scaffold(
                    body: Padding(
                      padding: const EdgeInsets.all(DSSpacing.xLarge),
                      child: MessageAndRetry(
                        message: AppStrings.problemTryAgain,
                        isError: true,
                        onRetryCallback: () => controller.retryGetSerie(),
                      ),
                    ),
                  ),
                  onEmpty: Padding(
                    padding: const EdgeInsets.all(DSSpacing.xLarge),
                    child: MessageAndRetry(
                      message: AppStrings.problemTryAgain,
                      onRetryCallback: () => controller.retryGetSerie(),
                    ),
                  ),
                  onLoading: const Padding(
                    padding: EdgeInsets.all(DSSpacing.xLarge),
                    child: Center(
                      child: LoadingWithMessage(
                        message: AppStrings.loadingSerieDetails,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
