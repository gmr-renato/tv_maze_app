part of 'ds_box_spacer.dart';

enum DSBoxSpacerSize { xsmall, small, medium, large, xLarge }

extension StormLayoutSpacerSizeExtension on DSBoxSpacerSize {
  double get kSize {
    switch (this) {
      case DSBoxSpacerSize.xsmall:
        return DSSpacing.xSmall;
      case DSBoxSpacerSize.small:
        return DSSpacing.small;
      case DSBoxSpacerSize.medium:
        return DSSpacing.medium;
      case DSBoxSpacerSize.large:
        return DSSpacing.large;
      case DSBoxSpacerSize.xLarge:
        return DSSpacing.xLarge;
      default:
        return DSSpacing.medium;
    }
  }
}
