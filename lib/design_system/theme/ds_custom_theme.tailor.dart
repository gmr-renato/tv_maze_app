// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'ds_custom_theme.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class DSCustomTheme extends ThemeExtension<DSCustomTheme> {
  const DSCustomTheme({
    required this.specificColor,
  });

  final SpecificColor specificColor;

  static final DSCustomTheme light = DSCustomTheme(
    specificColor: _$DSCustomTheme.specificColor[0],
  );

  static final DSCustomTheme dark = DSCustomTheme(
    specificColor: _$DSCustomTheme.specificColor[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  DSCustomTheme copyWith({
    SpecificColor? specificColor,
  }) {
    return DSCustomTheme(
      specificColor: specificColor ?? this.specificColor,
    );
  }

  @override
  DSCustomTheme lerp(ThemeExtension<DSCustomTheme>? other, double t) {
    if (other is! DSCustomTheme) return this;
    return DSCustomTheme(
      specificColor: specificColor.lerp(other.specificColor, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DSCustomTheme &&
            const DeepCollectionEquality()
                .equals(specificColor, other.specificColor));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(specificColor));
  }
}

extension DSCustomThemeBuildContextProps on BuildContext {
  DSCustomTheme get _dSCustomTheme =>
      Theme.of(this).extension<DSCustomTheme>()!;
  SpecificColor get specificColor => _dSCustomTheme.specificColor;
}

class SpecificColor extends ThemeExtension<SpecificColor> {
  const SpecificColor({
    required this.iconButtonBackground,
    required this.borderTransparent,
  });

  final Color iconButtonBackground;
  final Color borderTransparent;

  static final SpecificColor light = SpecificColor(
    iconButtonBackground: _$SpecificColor.iconButtonBackground[0],
    borderTransparent: _$SpecificColor.borderTransparent[0],
  );

  static final SpecificColor dark = SpecificColor(
    iconButtonBackground: _$SpecificColor.iconButtonBackground[1],
    borderTransparent: _$SpecificColor.borderTransparent[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  SpecificColor copyWith({
    Color? iconButtonBackground,
    Color? borderTransparent,
  }) {
    return SpecificColor(
      iconButtonBackground: iconButtonBackground ?? this.iconButtonBackground,
      borderTransparent: borderTransparent ?? this.borderTransparent,
    );
  }

  @override
  SpecificColor lerp(ThemeExtension<SpecificColor>? other, double t) {
    if (other is! SpecificColor) return this;
    return SpecificColor(
      iconButtonBackground:
          Color.lerp(iconButtonBackground, other.iconButtonBackground, t)!,
      borderTransparent:
          Color.lerp(borderTransparent, other.borderTransparent, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpecificColor &&
            const DeepCollectionEquality()
                .equals(iconButtonBackground, other.iconButtonBackground) &&
            const DeepCollectionEquality()
                .equals(borderTransparent, other.borderTransparent));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(iconButtonBackground),
        const DeepCollectionEquality().hash(borderTransparent));
  }
}
