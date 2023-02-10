import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../../design_system/theme/ds_properties.dart';
import '../../../../../design_system/theme/ds_sizes.dart';
import '../../../../../design_system/theme/ds_spacing.dart';
import '../../domain/short_serie.dart';

class SerieMainInfo extends StatelessWidget {
  const SerieMainInfo({
    super.key,
    required this.serie,
  });

  final ShortSerie serie;

  @override
  Widget build(BuildContext context) {
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
                  imageUrl: serie.imageUrl!,
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
              ),
              const DSBoxSpacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(serie.name!),
                  const DSBoxSpacer.small(),
                  Text(serie.language!),
                  const DSBoxSpacer.small(),
                  Text(
                    serie.averageRating?.toString() ?? 'No rating',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
