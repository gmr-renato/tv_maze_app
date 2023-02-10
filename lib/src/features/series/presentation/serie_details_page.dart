import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

import '../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../design_system/theme/ds_sizes.dart';
import '../../../../design_system/theme/ds_spacing.dart';
import '../../../global/presentation/loading_with_message.dart';
import '../../../global/presentation/message_and_retry.dart';
import '../application/serie_details_controller.dart';

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
                    CachedNetworkImage(
                      width: MediaQuery.of(context).size.width,
                      imageUrl: controller.serie.value!.imageUrl,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder: (
                        context,
                        url,
                        progress,
                      ) =>
                          Material(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        child: const CircularProgressIndicator.adaptive(),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).padding.top +
                            DSSizes.iconSizeXLarge,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Theme.of(context).colorScheme.background,
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: DSSpacing.small,
                      top: MediaQuery.of(context).padding.top,
                      child: const BackButton(),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: Theme.of(context).brightness == Brightness.dark
                            ? MediaQuery.of(context).size.width
                            : 196,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Theme.of(context).colorScheme.background,
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(DSSpacing.medium),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // TODO:
                              ElevatedButton.icon(
                                // TODO: Method to add show to favorite
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.favorite_outline_rounded),
                                label: const Text('Add to favorits'),
                              ),
                              const DSBoxSpacer.small(),
                              Text(
                                controller.serie.value!.name,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(DSSpacing.medium),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('The Plot'),
                          Html(
                            data: controller.serie.value!.summary,
                          ),
                        ],
                      ),
                      Text(
                        controller.serie.value!.language ?? 'Blank',
                      ),
                      Text(
                        controller.serie.value!.averageRating.toString(),
                      ),
                      Text(
                        controller.serie.value!.scheduleDays.toString(),
                      ),
                      Text(
                        controller.serie.value!.scheduleTime,
                      ),
                      Text(
                        controller.serie.value!.shortEpisodeList.length
                            .toString(),
                      ),
                    ],
                  ),
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
                    message: 'We had a problem, try again!',
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
                  message: 'We had a problem, try again!',
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
                message: 'Loading serie details',
              ),
            ),
          ),
        );
      },
    );
  }
}
