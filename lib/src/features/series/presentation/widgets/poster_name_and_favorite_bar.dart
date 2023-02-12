// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../../design_system/theme/ds_spacing.dart';

class PosterNameAndFavoriteBar extends StatelessWidget {
  const PosterNameAndFavoriteBar({
    super.key,
    required this.serieName,
    required this.addToFavoritesAction,
    this.iconFilled,
  });

  final String serieName;
  final Function() addToFavoritesAction;
  final bool? iconFilled;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              onPressed: addToFavoritesAction,
              icon: Icon(
                iconFilled != null && iconFilled!
                    ? Icons.favorite_rounded
                    : Icons.favorite_outline_rounded,
              ),
              label: const Text('Add to favorits'),
            ),
            const DSBoxSpacer.small(),
            Text(
              serieName,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
