import 'package:flutter/material.dart';

import 'base_text_theme.dart';
import 'ds_color_palette.dart';
import 'ds_const_colors.dart';
import 'ds_custom_theme.dart';
import 'ds_properties.dart';
import 'ds_sizes.dart';
import 'ds_spacing.dart';

final _darkColorScheme = const ColorScheme.dark().copyWith(
  primary: dsDarkColorPalette.primary[500],
  primaryContainer: dsDarkColorPalette.primary[800],
  secondary: dsDarkColorPalette.secondary[500],
  secondaryContainer: dsDarkColorPalette.secondary[800],
  surface: dsDarkColorPalette.neutral[75],
  background: dsDarkColorPalette.neutral[0],
  error: DSConstColors.error,
  onPrimary: dsDarkColorPalette.neutral[950],
  onSecondary: dsDarkColorPalette.neutral[950],
  onSurface: dsDarkColorPalette.neutral[950],
  onBackground: dsDarkColorPalette.neutral[950],
  onError: dsDarkColorPalette.neutral[950],
  brightness: Brightness.dark,
);

//
// ignore: prefer-static-class
final dsDarkTheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  visualDensity: VisualDensity.standard,
  colorScheme: _darkColorScheme,
  primaryColor: _darkColorScheme.primary,
  primaryColorLight: dsDarkColorPalette.primary[300],
  primaryColorDark: dsDarkColorPalette.primary[800],
  canvasColor: _darkColorScheme.surface,
  shadowColor: Colors.transparent,
  scaffoldBackgroundColor: _darkColorScheme.background,
  bottomAppBarColor: _darkColorScheme.surface,
  cardColor: _darkColorScheme.surface,
  dividerColor: dsDarkColorPalette.neutral[200],
  focusColor: dsDarkColorPalette.neutral[1000]!.withOpacity(0.08),
  hoverColor: dsDarkColorPalette.neutral[1000]!.withOpacity(0.08),
  highlightColor: dsDarkColorPalette.neutral[1000]!.withOpacity(0.08),
  splashColor: dsDarkColorPalette.neutral[300]!.withOpacity(0.3),
  splashFactory: InkSplash.splashFactory,

  // selectedRowColor: selectedRowColor,
  // unselectedWidgetColor: unselectedWidgetColor,
  disabledColor: _darkColorScheme.onSurface.withOpacity(0.4),
  // buttonColor: _darkColorScheme.primary,
  toggleButtonsTheme: const ToggleButtonsThemeData(
    borderRadius: BorderRadius.all(DSProperties.radiusMedium),
    borderWidth: DSSizes.borderThicknessMedium,
  ),
  // secondaryHeaderColor: secondaryHeaderColor,

  backgroundColor: _darkColorScheme.background,
  dialogBackgroundColor: _darkColorScheme.surface,
  indicatorColor: _darkColorScheme.primary,
  // hintColor: hintColor,
  errorColor: _darkColorScheme.error,
  // toggleableActiveColor: toggleableActiveColor,
  textTheme: dsBaseTextTheme.copyWith(
    headline1: dsBaseTextTheme.headline1!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    headline2: dsBaseTextTheme.headline2!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    headline3: dsBaseTextTheme.headline3!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    headline4: dsBaseTextTheme.headline4!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    headline5: dsBaseTextTheme.headline5!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    headline6: dsBaseTextTheme.headline6!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    subtitle1: dsBaseTextTheme.subtitle1!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    subtitle2: dsBaseTextTheme.subtitle2!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    bodyText1: dsBaseTextTheme.bodyText1!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    bodyText2: dsBaseTextTheme.bodyText2!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    button: dsBaseTextTheme.button!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    caption: dsBaseTextTheme.caption!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    overline: dsBaseTextTheme.overline!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
  ),
  primaryTextTheme: dsBaseTextTheme.copyWith(
    headline1: dsBaseTextTheme.headline1!.copyWith(
      color: _darkColorScheme.primary,
    ),
    headline2: dsBaseTextTheme.headline2!.copyWith(
      color: _darkColorScheme.primary,
    ),
    headline3: dsBaseTextTheme.headline3!.copyWith(
      color: _darkColorScheme.primary,
    ),
    headline4: dsBaseTextTheme.headline4!.copyWith(
      color: _darkColorScheme.primary,
    ),
    headline5: dsBaseTextTheme.headline5!.copyWith(
      color: _darkColorScheme.primary,
    ),
    headline6: dsBaseTextTheme.headline6!.copyWith(
      color: _darkColorScheme.primary,
    ),
    subtitle1: dsBaseTextTheme.subtitle1!.copyWith(
      color: _darkColorScheme.primary,
    ),
    subtitle2: dsBaseTextTheme.subtitle2!.copyWith(
      color: _darkColorScheme.primary,
    ),
    bodyText1: dsBaseTextTheme.bodyText1!.copyWith(
      color: _darkColorScheme.primary,
    ),
    bodyText2: dsBaseTextTheme.bodyText2!.copyWith(
      color: _darkColorScheme.primary,
    ),
    button: dsBaseTextTheme.button!.copyWith(
      color: _darkColorScheme.primary,
    ),
    caption: dsBaseTextTheme.caption!.copyWith(
      color: _darkColorScheme.primary,
    ),
    overline: dsBaseTextTheme.overline!.copyWith(
      color: _darkColorScheme.primary,
    ),
  ),

  iconTheme: IconThemeData(color: _darkColorScheme.onSurface),
  primaryIconTheme: IconThemeData(color: _darkColorScheme.primary),

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
        _darkColorScheme.secondary.withOpacity(0.4),
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
        _darkColorScheme.primary.withOpacity(0.1),
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
            color: _darkColorScheme.onSurface.withOpacity(0.2),
          );
        } else {
          return BorderSide(
            color: dsDarkColorPalette.primary[800]!,
          );
        }
      }),
      overlayColor: MaterialStateProperty.all(
        _darkColorScheme.primary.withOpacity(0.2),
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: _darkColorScheme.onPrimary,
    backgroundColor: _darkColorScheme.primary,
    focusColor: _darkColorScheme.secondary.withOpacity(0.4),
    hoverColor: _darkColorScheme.secondary.withOpacity(0.4),
    splashColor: _darkColorScheme.secondary.withOpacity(0.4),
    elevation: 0,
    focusElevation: 0,
    hoverElevation: 0,
    highlightElevation: 0,
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
    activeTrackColor: _darkColorScheme.primary,
    activeTickMarkColor: _darkColorScheme.onPrimary,
    inactiveTrackColor: _darkColorScheme.primary.withOpacity(0.4),
    inactiveTickMarkColor: _darkColorScheme.primary.withOpacity(0.4),
    valueIndicatorColor: _darkColorScheme.primaryContainer,
    thumbColor: _darkColorScheme.primary,
  ),

  // cardTheme: ,
  // chipTheme: ,
  // platform: ,
  // materialTapTargetSize: ,
  // applyElevationOverlayColor: ,
  // pageTransitionsTheme: ,
  appBarTheme: AppBarTheme(
    backgroundColor: _darkColorScheme.surface,
    foregroundColor: _darkColorScheme.primary,
    elevation: 1,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: dsDarkColorPalette.neutral[600],
    ),
    actionsIconTheme: IconThemeData(
      color: dsDarkColorPalette.neutral[600],
    ),
    titleTextStyle: dsBaseTextTheme.headline6!.copyWith(
      color: _darkColorScheme.onSurface,
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
          color: _darkColorScheme.primary,
        ),
      ),
    ),
    labelPadding: const EdgeInsets.symmetric(
      horizontal: DSSpacing.medium,
    ),
    indicatorSize: TabBarIndicatorSize.tab,
    unselectedLabelColor: dsDarkColorPalette.neutral[700],
    labelColor: _darkColorScheme.primary,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    unselectedItemColor: dsDarkColorPalette.neutral[600],
    selectedItemColor: _darkColorScheme.primary,
  ),

  dialogTheme: DialogTheme(
    backgroundColor: _darkColorScheme.surface,
    // elevation: ,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        DSProperties.radiusMedium,
      ),
      side: BorderSide(
        color: dsDarkColorPalette.neutral[150]!,
      ),
    ),
    // titleTextStyle: ,
    // contentTextStyle: ,
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: dsDarkColorPalette.neutral[800]!.withOpacity(0.96),
    shape: const ContinuousRectangleBorder(),
    behavior: SnackBarBehavior.floating,
    actionTextColor: dsDarkColorPalette.neutral[800],
    contentTextStyle: dsBaseTextTheme.bodyText2,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: DSProperties.radiusLarge,
      ),
    ),
    backgroundColor: _darkColorScheme.background,
  ),

  tooltipTheme: TooltipThemeData(
    padding: const EdgeInsets.symmetric(
      horizontal: DSSpacing.medium,
      vertical: DSSpacing.small,
    ),
    decoration: BoxDecoration(
      color: dsDarkColorPalette.neutral[800]!.withOpacity(0.96),
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
    color: _darkColorScheme.surface,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        DSProperties.radiusMedium,
      ),
      side: BorderSide(
        color: dsDarkColorPalette.neutral[150]!,
      ),
    ),
  ),
  // bannerTheme: ,
  dividerTheme: DividerThemeData(
    color: dsDarkColorPalette.neutral[200],
    thickness: DSSizes.dividerThickness,
  ),
  buttonBarTheme: const ButtonBarThemeData(
    buttonPadding: EdgeInsets.zero,
  ),

  timePickerTheme: TimePickerThemeData(
    backgroundColor: _darkColorScheme.surface,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        DSProperties.radiusSmall,
      ),
      side: BorderSide(
        color: dsDarkColorPalette.neutral[150]!,
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
    dialBackgroundColor: _darkColorScheme.background,
  ),

  textSelectionTheme: TextSelectionThemeData(
    selectionColor: dsDarkColorPalette.neutral[800],
    selectionHandleColor: _darkColorScheme.primary,
    cursorColor: _darkColorScheme.primary,
  ),

  // dataTableTheme: ,
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all(
      _darkColorScheme.primary,
    ),
  ),

  // radioTheme: ,
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected) &&
            !states.contains(MaterialState.disabled)) {
          return _darkColorScheme.primary;
        } else if (!states.contains(MaterialState.selected) &&
            !states.contains(MaterialState.disabled)) {
          return _darkColorScheme.onPrimary;
        } else {
          return dsDarkColorPalette.neutral[300];
        }
      },
    ),
    trackColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected) &&
            !states.contains(MaterialState.disabled)) {
          return _darkColorScheme.primaryContainer;
        } else if (!states.contains(MaterialState.selected) &&
            !states.contains(MaterialState.disabled)) {
          return dsDarkColorPalette.neutral[300];
        } else {
          return dsDarkColorPalette.neutral[200];
        }
      },
    ),
  ),
  // fixTextFieldOutlineLabel: ,
  // useTextSelectionTheme: ,
  extensions: <ThemeExtension<dynamic>>[DSCustomTheme.dark],
);
