// ignore_for_file: avoid_classes_with_only_static_members

part of '../ds_custom_theme.dart';

@TailorComponent(themes: ['light', 'dark'])
class _$SpecificColor {
  static List<Color> iconButtonBackground = [
    dsLightColorPalette.neutral[1000]!.withOpacity(0.04),
    dsDarkColorPalette.neutral[1000]!.withOpacity(0.08),
  ];
  static List<Color> borderTransparent = [
    dsLightColorPalette.neutral[1000]!.withOpacity(0.1),
    dsDarkColorPalette.neutral[1000]!.withOpacity(0.1),
  ];
}
