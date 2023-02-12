import 'package:flutter/material.dart';

import 'base_text_theme.dart';
import 'ds_color_palette.dart';
import 'ds_const_colors.dart';
import 'ds_custom_theme.dart';
import 'ds_properties.dart';
import 'ds_sizes.dart';
import 'ds_spacing.dart';

final _lightColorScheme = const ColorScheme.light().copyWith(
  primary: dsLightColorPalette.primary[500],
  primaryContainer: dsLightColorPalette.primary[800],
  secondary: dsLightColorPalette.secondary[500],
  secondaryContainer: dsLightColorPalette.secondary[800],
  surface: dsLightColorPalette.neutral[0],
  background: dsLightColorPalette.neutral[75],
  error: DSConstColors.error,
  onPrimary: dsLightColorPalette.neutral[50],
  onSecondary: dsLightColorPalette.neutral[50],
  onSurface: dsLightColorPalette.neutral[950],
  onBackground: dsLightColorPalette.neutral[950],
  onError: dsLightColorPalette.neutral[50],
  brightness: Brightness.light,
);

//
// ignore: prefer-static-class
final dsLightTheme = ThemeData.light().copyWith(
  useMaterial3: true,
  visualDensity: VisualDensity.standard,
  colorScheme: _lightColorScheme,
  primaryColor: _lightColorScheme.primary,
  primaryColorLight: dsLightColorPalette.primary[300],
  primaryColorDark: dsLightColorPalette.primary[800],
  canvasColor: _lightColorScheme.surface,
  shadowColor: Colors.black,
  scaffoldBackgroundColor: _lightColorScheme.background,
  bottomAppBarColor: _lightColorScheme.surface,
  cardColor: _lightColorScheme.surface,
  dividerColor: dsLightColorPalette.neutral[200],
  focusColor: dsLightColorPalette.neutral[1000]!.withOpacity(0.08),
  hoverColor: dsLightColorPalette.neutral[1000]!.withOpacity(0.06),
  highlightColor: dsLightColorPalette.neutral[1000]!.withOpacity(0.08),
  splashColor: dsLightColorPalette.neutral[300]!.withOpacity(0.3),
  splashFactory: InkSplash.splashFactory,

  // selectedRowColor: selectedRowColor,
  // unselectedWidgetColor: unselectedWidgetColor,
  disabledColor: _lightColorScheme.onSurface.withOpacity(0.4),
  // buttonColor: _lightColorScheme.primary,
  toggleButtonsTheme: const ToggleButtonsThemeData(
    borderRadius: BorderRadius.all(DSProperties.radiusMedium),
    borderWidth: DSSizes.borderThicknessMedium,
  ),
  // secondaryHeaderColor: secondaryHeaderColor,

  backgroundColor: _lightColorScheme.background,
  dialogBackgroundColor: _lightColorScheme.surface,
  indicatorColor: _lightColorScheme.primary,
  // hintColor: hintColor,
  errorColor: _lightColorScheme.error,
  // toggleableActiveColor: toggleableActiveColor,
  textTheme: dsBaseTextTheme.copyWith(
    headline1: dsBaseTextTheme.headline1!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    headline2: dsBaseTextTheme.headline2!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    headline3: dsBaseTextTheme.headline3!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    headline4: dsBaseTextTheme.headline4!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    headline5: dsBaseTextTheme.headline5!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    headline6: dsBaseTextTheme.headline6!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    subtitle1: dsBaseTextTheme.subtitle1!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    subtitle2: dsBaseTextTheme.subtitle2!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    bodyText1: dsBaseTextTheme.bodyText1!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    bodyText2: dsBaseTextTheme.bodyText2!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    button: dsBaseTextTheme.button!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    caption: dsBaseTextTheme.caption!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    overline: dsBaseTextTheme.overline!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
  ),
  primaryTextTheme: dsBaseTextTheme.copyWith(
    headline1: dsBaseTextTheme.headline1!.copyWith(
      color: _lightColorScheme.primary,
    ),
    headline2: dsBaseTextTheme.headline2!.copyWith(
      color: _lightColorScheme.primary,
    ),
    headline3: dsBaseTextTheme.headline3!.copyWith(
      color: _lightColorScheme.primary,
    ),
    headline4: dsBaseTextTheme.headline4!.copyWith(
      color: _lightColorScheme.primary,
    ),
    headline5: dsBaseTextTheme.headline5!.copyWith(
      color: _lightColorScheme.primary,
    ),
    headline6: dsBaseTextTheme.headline6!.copyWith(
      color: _lightColorScheme.primary,
    ),
    subtitle1: dsBaseTextTheme.subtitle1!.copyWith(
      color: _lightColorScheme.primary,
    ),
    subtitle2: dsBaseTextTheme.subtitle2!.copyWith(
      color: _lightColorScheme.primary,
    ),
    bodyText1: dsBaseTextTheme.bodyText1!.copyWith(
      color: _lightColorScheme.primary,
    ),
    bodyText2: dsBaseTextTheme.bodyText2!.copyWith(
      color: _lightColorScheme.primary,
    ),
    button: dsBaseTextTheme.button!.copyWith(
      color: _lightColorScheme.primary,
    ),
    caption: dsBaseTextTheme.caption!.copyWith(
      color: _lightColorScheme.primary,
    ),
    overline: dsBaseTextTheme.overline!.copyWith(
      color: _lightColorScheme.primary,
    ),
  ),

  iconTheme: IconThemeData(color: _lightColorScheme.onSurface),
  primaryIconTheme: IconThemeData(color: _lightColorScheme.primary),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(const StadiumBorder()),
      minimumSize: MaterialStateProperty.all(
        const Size(
          DSSizes.materialTapTargetSize,
          DSSizes.minButtonVisualHeight,
        ),
      ),
      tapTargetSize: MaterialTapTargetSize.padded,
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
          horizontal: DSSpacing.medium,
          vertical: DSSpacing.small,
        ),
      ),
      overlayColor: MaterialStateProperty.all(
        _lightColorScheme.secondary.withOpacity(0.2),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(const StadiumBorder()),
      minimumSize: MaterialStateProperty.all(
        const Size(
          DSSizes.materialTapTargetSize,
          DSSizes.minButtonVisualHeight,
        ),
      ),
      tapTargetSize: MaterialTapTargetSize.padded,
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
          horizontal: DSSpacing.medium,
          vertical: DSSpacing.small,
        ),
      ),
      overlayColor: MaterialStateProperty.all(
        _lightColorScheme.primary.withOpacity(0.2),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(const StadiumBorder()),
      minimumSize: MaterialStateProperty.all(
        const Size(
          DSSizes.materialTapTargetSize,
          DSSizes.minButtonVisualHeight,
        ),
      ),
      tapTargetSize: MaterialTapTargetSize.padded,
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
          horizontal: DSSpacing.medium,
          vertical: DSSpacing.small,
        ),
      ),
      side: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return BorderSide(
            color: _lightColorScheme.onSurface.withOpacity(0.2),
          );
        } else {
          return BorderSide(
            color: _lightColorScheme.primary,
          );
        }
      }),
      overlayColor: MaterialStateProperty.all(
        _lightColorScheme.primary.withOpacity(0.2),
      ),
    ),
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: _lightColorScheme.onPrimary,
    backgroundColor: _lightColorScheme.primary,
    focusColor: _lightColorScheme.secondary.withOpacity(0.2),
    hoverColor: _lightColorScheme.secondary.withOpacity(0.2),
    splashColor: _lightColorScheme.secondary.withOpacity(0.2),
    elevation: 2,
    focusElevation: 3,
    hoverElevation: 3,
    highlightElevation: 6,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        DSProperties.radiusMedium,
      ),
    ),
    helperMaxLines: 3,
    errorMaxLines: 3,
    contentPadding: EdgeInsets.all(DSSpacing.medium),
    // fillColor: ,
    // focusColor: ,
    // hoverColor: ,
    // filled: false,
  ),
  sliderTheme: SliderThemeData(
    trackHeight: 4.0,
    activeTrackColor: _lightColorScheme.primary,
    activeTickMarkColor: _lightColorScheme.onPrimary,
    inactiveTrackColor: _lightColorScheme.primary.withOpacity(0.4),
    inactiveTickMarkColor: _lightColorScheme.primary.withOpacity(0.4),
    valueIndicatorColor: _lightColorScheme.primaryContainer,
    thumbColor: _lightColorScheme.primary,
  ),

  // cardTheme: ,
  // chipTheme: ,
  // platform: ,
  // materialTapTargetSize: ,
  // applyElevationOverlayColor: ,
  // pageTransitionsTheme: ,
  appBarTheme: AppBarTheme(
    backgroundColor: _lightColorScheme.surface,
    foregroundColor: _lightColorScheme.primary,
    elevation: 1,
    shadowColor: Colors.black,
    iconTheme: IconThemeData(
      color: dsLightColorPalette.neutral[600],
    ),
    actionsIconTheme: IconThemeData(
      color: dsLightColorPalette.neutral[600],
    ),
    titleTextStyle: dsBaseTextTheme.headline6!.copyWith(
      color: _lightColorScheme.primary,
    ),

    // titleSpacing: ,
    // systemOverlayStyle: ,
    // backwardsCompatibility: ,
    centerTitle: true,
  ),
  tabBarTheme: TabBarTheme(
    indicator: ShapeDecoration(
      shape: Border(
        bottom: BorderSide(
          width: 2.0,
          color: _lightColorScheme.primary,
        ),
      ),
    ),
    labelPadding: const EdgeInsets.symmetric(
      horizontal: DSSpacing.medium,
    ),
    indicatorSize: TabBarIndicatorSize.tab,
    unselectedLabelColor: dsLightColorPalette.neutral[700],
    labelColor: _lightColorScheme.primary,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    unselectedItemColor: dsLightColorPalette.neutral[600],
    selectedItemColor: _lightColorScheme.primary,
  ),

  dialogTheme: DialogTheme(
    backgroundColor: _lightColorScheme.surface,
    // elevation: ,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        DSProperties.radiusMedium,
      ),
      side: BorderSide(
        color: Colors.transparent,
      ),
    ),
    // titleTextStyle: ,
    // contentTextStyle: ,
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: dsLightColorPalette.neutral[800]!.withOpacity(0.96),
    shape: const ContinuousRectangleBorder(),
    behavior: SnackBarBehavior.floating,
    actionTextColor: _lightColorScheme.primary,
    contentTextStyle: dsBaseTextTheme.bodyText2,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: DSProperties.radiusLarge,
      ),
    ),
    backgroundColor: _lightColorScheme.background,
  ),

  tooltipTheme: TooltipThemeData(
    padding: const EdgeInsets.symmetric(
      horizontal: DSSpacing.medium,
      vertical: DSSpacing.small,
    ),
    decoration: BoxDecoration(
      color: dsLightColorPalette.neutral[800]!.withOpacity(0.96),
      borderRadius: const BorderRadius.all(
        DSProperties.radiusSmall,
      ),
    ),
    margin: const EdgeInsets.all(DSSpacing.small),
    showDuration: const Duration(seconds: 3),
  ),
  // scrollbarTheme: ,
  // bottomAppBarTheme: ,
  // navigationRailTheme: ,
  // cupertinoOverrideTheme: ,
  popupMenuTheme: PopupMenuThemeData(
    color: _lightColorScheme.surface,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        DSProperties.radiusMedium,
      ),
      side: BorderSide(
        color: Colors.transparent,
      ),
    ),
  ),
  // bannerTheme: ,
  dividerTheme: DividerThemeData(
    color: dsLightColorPalette.neutral[200],
    thickness: DSSizes.dividerThickness,
  ),
  buttonBarTheme: const ButtonBarThemeData(
    buttonPadding: EdgeInsets.zero,
  ),

  timePickerTheme: TimePickerThemeData(
    backgroundColor: _lightColorScheme.surface,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        DSProperties.radiusMedium,
      ),
      side: BorderSide(
        color: Colors.transparent,
      ),
    ),
    hourMinuteShape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        DSProperties.radiusMedium,
      ),
    ),
    dayPeriodShape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        DSProperties.radiusMedium,
      ),
    ),
    dialBackgroundColor: _lightColorScheme.background,
  ),

  textSelectionTheme: TextSelectionThemeData(
    selectionColor: _lightColorScheme.primary,
    selectionHandleColor: _lightColorScheme.primary,
    cursorColor: _lightColorScheme.primary,
  ),

  // dataTableTheme: ,
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all(
      _lightColorScheme.primary,
    ),
  ),

  // radioTheme: ,
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected) &&
            !states.contains(MaterialState.disabled)) {
          return _lightColorScheme.primary;
        } else if (!states.contains(MaterialState.selected) &&
            !states.contains(MaterialState.disabled)) {
          return _lightColorScheme.onPrimary;
        } else {
          return dsLightColorPalette.neutral[300];
        }
      },
    ),
    trackColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected) &&
            !states.contains(MaterialState.disabled)) {
          return _lightColorScheme.primaryContainer;
        } else if (!states.contains(MaterialState.selected) &&
            !states.contains(MaterialState.disabled)) {
          return dsLightColorPalette.neutral[300];
        } else {
          return dsLightColorPalette.neutral[200];
        }
      },
    ),
  ),
  // fixTextFieldOutlineLabel: ,
  // useTextSelectionTheme: ,
  extensions: <ThemeExtension<dynamic>>[DSCustomTheme.light],
);
