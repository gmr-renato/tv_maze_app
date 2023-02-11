import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../../design_system/theme/ds_properties.dart';
import '../../../../../design_system/theme/ds_sizes.dart';
import '../../../../../design_system/theme/ds_spacing.dart';
import '../../domain/short_serie.dart';
import '../serie_details_page_animated.dart';
import 'poster_image.dart';

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
        // HACK: navigate using here (cool for)
        onTap: () => Navigator.push(
          context,
          PageTransition(
            child: SerieDetailsPageAnimated(
              serie: serie,
            ),
            type: PageTransitionType.size,
            alignment: Alignment.bottomCenter,
          ),
        ),

        // HACK: navigate using named (cool deep links)
        // onTap: () => Get.toNamed(
        //   '${AppRoutes.serieDetails}${serie.uid.toStringAsFixed(0)}',
        child: Padding(
          padding: const EdgeInsets.all(DSSpacing.medium),
          child: Row(
            children: [
              SizedBox(
                height: DSSizes.showThumbnailPosterSize,
                width: DSSizes.showThumbnailPosterSize,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    DSProperties.radiusMedium,
                  ),
                  child: Hero(
                    tag: serie.imageUrl!,
                    child: PosterImage(imageUrl: serie.imageUrl!),
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
