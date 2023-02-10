import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../design_system/theme/ds_properties.dart';
import '../../../design_system/theme/ds_sizes.dart';
import '../../../design_system/theme/ds_spacing.dart';
import '../../../design_system/theme/utils/ds_theme_switcher_button.dart';
import '../../features/series/application/list_series_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        actions: const [
          DSThemeSwitcherButton(),
        ],
      ),
      body: GetBuilder<ListSeriesController>(
        builder: (controller) => Obx(
          () {
            final status = controller.readAllStatus.value;
            if (status.isEmpty) {
              return const Text('Empty');
            } else if (status.isError) {
              return const Text('Error');
            } else if (status.isLoading) {
              return const Text('Loading');
            } else if (status.isSuccess) {
              final series = controller.allSeriesFromRepository.value!.series;

              return ListView.separated(
                cacheExtent: 30,
                itemCount: series.length,
                itemBuilder: (context, index) {
                  final currentSerie = series[index];

                  return Material(
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(DSSpacing.medium),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                DSProperties.radiusMedium,
                              ),
                              child: CachedNetworkImage(
                                height: DSSizes.showThumbnailPosterSize,
                                width: DSSizes.showThumbnailPosterSize,
                                imageUrl: currentSerie.imageUrl!,
                                fit: BoxFit.cover,
                                progressIndicatorBuilder: (
                                  context,
                                  url,
                                  progress,
                                ) =>
                                    Material(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  child: const CircularProgressIndicator
                                      .adaptive(),
                                ),
                              ),
                            ),
                            const DSBoxSpacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(currentSerie.name!),
                                const DSBoxSpacer.small(),
                                Text(currentSerie.language!),
                                const DSBoxSpacer.small(),
                                Text(
                                  currentSerie.averageRating?.toString() ??
                                      'No rating',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const DSBoxSpacer.xxSmall();
                },
              );
            } else {
              return const Text('Not know');
            }
          },
        ),
      ),
    );
  }
}
