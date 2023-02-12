import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../design_system/theme/ds_spacing.dart';
import '../../../global/app_strings.dart';
import '../../../global/constants/constants.dart';
import '../../../global/presentation/loading_with_message.dart';
import '../../../global/presentation/message_and_retry.dart';
import '../application/serie_details_controller.dart';
import 'widgets/poster_gradient_bar.dart';
import 'widgets/poster_image.dart';
import 'widgets/poster_name_and_favorite_bar.dart';
import 'widgets/serie_details.dart';

class SerieDetailsPage extends StatelessWidget {
  const SerieDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SerieDetailsController>(
      builder: (controller) {
        return controller.obx(
          (state) => Scaffold(
            body: ListView(
              padding: EdgeInsets.zero,
              children: [
                Stack(
                  children: [
                    PosterImage(
                      imageUrl: controller.loadedSerie.value!.imageUrl ??
                          Constants.placeholderImage,
                    ),
                    const Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: PosterGradientBar(),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: PosterNameAndFavoriteBar(
                        serieName: controller.loadedSerie.value!.name,
                        addToFavoritesAction: () {},
                      ),
                    ),
                  ],
                ),
                SerieDetails(
                  serie: controller.loadedSerie.value!,
                ),
              ],
            ),
          ),
          onError: (error) => Scaffold(
            body: Center(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(DSSpacing.large),
                  child: MessageAndRetry(
                    message: AppStrings.problemTryAgain,
                    isError: true,
                    onRetryCallback: () {
                      controller.status;
                    },
                  ),
                ),
              ),
            ),
          ),
          onEmpty: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(DSSpacing.large),
                child: MessageAndRetry(
                  message: AppStrings.problemTryAgain,
                  onRetryCallback: () {
                    controller.status;
                  },
                ),
              ),
            ),
          ),
          onLoading: const Scaffold(
            body: Center(
              child: LoadingWithMessage(
                message: AppStrings.loadingSerieDetails,
              ),
            ),
          ),
        );
      },
    );
  }
}
