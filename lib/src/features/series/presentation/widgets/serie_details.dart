import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../../design_system/theme/ds_spacing.dart';
import '../../domain/serie.dart';
import 'seasons_and_episodes.dart';

class SerieDetails extends StatelessWidget {
  const SerieDetails({super.key, required this.serie});

  final Serie serie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(DSSpacing.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'The plot'.toUpperCase(),
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              Html(
                data: serie.summary,
              ),
              Row(
                children: [
                  Text(
                    'Language: ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    serie.language ?? 'Not found',
                  ),
                ],
              ),
              const DSBoxSpacer(),
              Row(
                children: [
                  Text(
                    'Rating: ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    serie.averageRating?.toString() ?? 'No rating',
                  ),
                ],
              ),
              const DSBoxSpacer(),
              Row(
                children: [
                  Text(
                    'Rating: ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    serie.genres.toString(),
                  ),
                ],
              ),
              const DSBoxSpacer(),
              Row(
                children: [
                  Text(
                    'Schedule days: ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    serie.scheduleDays.toString(),
                  ),
                ],
              ),
              const DSBoxSpacer(),
              Row(
                children: [
                  Text(
                    'Schedule time: ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    serie.scheduleTime,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          indent: DSSpacing.medium,
          endIndent: DSSpacing.medium,
        ),
        Padding(
          padding: const EdgeInsets.all(DSSpacing.medium),
          child: Text(
            'Seasons and episodes'.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        SeasonsAndEpisodes(episodes: serie.episodes),
      ],
    );
  }
}
