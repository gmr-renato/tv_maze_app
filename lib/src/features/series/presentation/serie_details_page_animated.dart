import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

import '../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../design_system/theme/ds_sizes.dart';
import '../../../../design_system/theme/ds_spacing.dart';
import '../../../global/presentation/global_presentation_constants.dart';
import '../../../global/presentation/loading_with_message.dart';
import '../../../global/presentation/message_and_retry.dart';
import '../application/serie_details_controller.dart';
import '../domain/short_serie.dart';
import '../infrastructure/series_repository.dart';
import 'widgets/poster_image.dart';

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
    // TODO: implement initState
    super.initState();

    Get.lazyPut(
      () => SerieDetailsController(
        SeriesRepository(),
        serie: widget.serie,
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
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.serie.imageUrl!,
                child: PosterImage(imageUrl: widget.serie.imageUrl!),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AnimatedOpacity(
                  opacity: elementOpacity,
                  curve: Curves.easeInOut,
                  duration: GlobalPresentationConstants.pageTransitionDuration,
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
              ),
              Positioned(
                left: DSSpacing.small,
                top: 0,
                child: AnimatedOpacity(
                  curve: Curves.easeInOut,
                  opacity: elementOpacity,
                  duration: GlobalPresentationConstants.pageTransitionDuration,
                  child: const BackButton(),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: AnimatedOpacity(
                  opacity: elementOpacity,
                  curve: Curves.easeInOut,
                  duration: GlobalPresentationConstants.pageTransitionDuration,
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
                            icon: const Icon(Icons.favorite_outline_rounded),
                            label: const Text('Add to favorits'),
                          ),
                          const DSBoxSpacer.small(),
                          Text(
                            widget.serie.name!,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          GetBuilder<SerieDetailsController>(
            builder: (controller) {
              return controller.obx(
                (state) => Padding(
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
                            data: 'Sumary',
                          ),
                        ],
                      ),
                      const Text('Language'),
                      const Text('averageRating'),
                      const Text('scheduleDays'),
                      const Text('scheduleTime'),
                      const Text('shortEpisodeList'),
                    ],
                  ),
                ),
                onError: (error) => Scaffold(
                  body: Padding(
                    padding: const EdgeInsets.all(DSSpacing.xLarge),
                    child: MessageAndRetry(
                      message: 'We had a problem, try again!',
                      isError: true,
                      onRetryCallback: () {
                        controller.status;
                      },
                    ),
                  ),
                ),
                onEmpty: Padding(
                  padding: const EdgeInsets.all(DSSpacing.xLarge),
                  child: MessageAndRetry(
                    message: 'We had a problem, try again!',
                    onRetryCallback: () {
                      controller.status;
                    },
                  ),
                ),
                onLoading: const Padding(
                  padding: EdgeInsets.all(DSSpacing.xLarge),
                  child: Center(
                    child: LoadingWithMessage(
                      message: 'Loading serie details',
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
