import 'package:flutter/material.dart';

import '../../../../../design_system/theme/ds_sizes.dart';
import '../../../../../design_system/theme/ds_spacing.dart';

class PosterGradientBar extends StatelessWidget {
  const PosterGradientBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).padding.top + DSSizes.iconSizeXLarge,
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
      child: const Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.all(DSSpacing.small),
          child: BackButton(),
        ),
      ),
    );
  }
}
