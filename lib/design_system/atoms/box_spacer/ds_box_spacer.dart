import 'package:flutter/material.dart';

import '../../theme/ds_spacing.dart';

part 'ds_box_spacer_size.dart';

/// {@template DSBoxSpacer}
/// A class to simpligy the usage of
/// ```dart
/// SizedBox(height: value, width: value)
/// ````
/// with:
/// ```dart
/// DSBoxSpacer.dimension()
/// ````
/// Only values from [DSBoxSpacerSize] are available for dimension.
/// {@endtemplate}
class DSBoxSpacer extends SizedBox {
  ///{@macro DSBoxSpacer}
  const DSBoxSpacer({super.key}) : super.square(dimension: DSSpacing.medium);

  ///{@macro DSBoxSpacer}
  const DSBoxSpacer.xxSmall({super.key})
      : super.square(dimension: DSSpacing.xxSmall);

  ///{@macro DSBoxSpacer}
  const DSBoxSpacer.xSmall({super.key})
      : super.square(dimension: DSSpacing.xSmall);

  ///{@macro DSBoxSpacer}
  const DSBoxSpacer.small({super.key})
      : super.square(dimension: DSSpacing.small);

  ///{@macro DSBoxSpacer}
  const DSBoxSpacer.large({super.key})
      : super.square(dimension: DSSpacing.large);

  ///{@macro DSBoxSpacer}
  DSBoxSpacer.custom({super.key, required DSBoxSpacerSize size})
      : super.square(dimension: size.kSize);
}
