import 'package:flutter/material.dart';

import '../../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../../design_system/theme/ds_properties.dart';
import '../../../../../design_system/theme/ds_sizes.dart';
import '../../../../../design_system/theme/ds_spacing.dart';
import '../../../../global/constants/constants.dart';
import '../../domain/episode.dart';
import 'poster_image.dart';

class EpisodeListTile extends StatelessWidget {
  const EpisodeListTile({
    super.key,
    required this.episode,
  });

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(DSSpacing.medium),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: DSSizes.showThumbnailPosterSize,
                width: DSSizes.showThumbnailPosterSize,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    DSProperties.radiusMedium,
                  ),
                  child: Hero(
                    tag: episode.imageUrl ?? Constants.placeholderImage,
                    child: PosterImage(
                      imageUrl: episode.imageUrl ?? Constants.placeholderImage,
                    ),
                  ),
                ),
              ),
              const DSBoxSpacer(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${episode.number!}: ${episode.name!}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const DSBoxSpacer(),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today_rounded,
                          size: DSSizes.iconSizeSmall,
                        ),
                        const DSBoxSpacer.small(),
                        Text(
                          episode.airdate!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
