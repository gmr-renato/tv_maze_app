// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../design_system/theme/ds_spacing.dart';

class EpisodePosterNameBar extends StatelessWidget {
  const EpisodePosterNameBar({
    super.key,
    required this.episodeName,
  });

  final String episodeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DSSpacing.xxLarge,
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
            Text(
              episodeName,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
