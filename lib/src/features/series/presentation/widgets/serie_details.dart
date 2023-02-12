import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../domain/serie.dart';

class SerieDetails extends StatelessWidget {
  const SerieDetails({super.key, required this.serie});

  final Serie serie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'The plot:',
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
    );
  }
}
