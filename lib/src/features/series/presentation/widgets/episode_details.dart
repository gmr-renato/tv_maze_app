import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../../design_system/theme/ds_spacing.dart';
import '../../domain/episode.dart';

class EpisodeDetails extends StatelessWidget {
  const EpisodeDetails({super.key, required this.episode});

  final Episode episode;

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
                data: episode.summary,
              ),
              Row(
                children: [
                  Text(
                    'Number: ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    episode.number.toString(),
                  ),
                ],
              ),
              const DSBoxSpacer(),
              Row(
                children: [
                  Text(
                    'Season: ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    episode.season.toString(),
                  ),
                ],
              ),
              const DSBoxSpacer(),
              Row(
                children: [
                  Text(
                    'Air date: ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    episode.airdate ?? 'Not found',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
