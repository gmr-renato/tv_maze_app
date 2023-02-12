// ignore_for_file: unused_element, unused_field
// ignore_for_file: avoid_classes_with_only_static_members
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import 'ds_color_palette.dart';

part 'ds_custom_theme.tailor.dart';
part 'extensions/specific_color.dart';

@tailor
class _$DSCustomTheme {
  @themeExtension
  static List<SpecificColor> specificColor = SpecificColor.themes;
}
