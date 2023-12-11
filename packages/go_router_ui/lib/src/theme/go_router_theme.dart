import 'package:flutter/material.dart';
import 'package:go_router_ui/go_router_ui.dart';
import 'package:flutter/services.dart';

class GRTheme {
  /// Light Theme example based on Material 2 Design.
  ThemeData get lightTheme {
    return ThemeData(
      primaryColor: GRColors.skyBlue,
      canvasColor: _backgroundColor,
      scaffoldBackgroundColor: _backgroundColor,
      iconTheme: _lightIconTheme,
      appBarTheme: _lightAppBarTheme,
      dividerTheme: _dividerTheme,
      textTheme: _lightTextTheme,
      buttonTheme: _buttonTheme,
      splashColor: GRColors.transparent,
      elevatedButtonTheme: _elevatedButtonTheme,
      textButtonTheme: _textButtonTheme,
      colorScheme: _lightColorScheme,
      bottomSheetTheme: _lightBottomSheetTheme,
      listTileTheme: _listTileTheme,
      switchTheme: _switchTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      tabBarTheme: _tabBarTheme,
      bottomNavigationBarTheme: _bottomAppBarTheme,
      chipTheme: _chipTheme,
      dividerColor: GRColors.grey,
      outlinedButtonTheme: _lightOutlinedButtonTheme,
    );
  }

  /// Dark Theme example based on Material 2 Design.
  ThemeData get darkTheme => lightTheme.copyWith(
        chipTheme: _darkChipTheme,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: GRColors.black,
        colorScheme: _darkColorScheme,
        appBarTheme: _darkAppBarTheme,
        disabledColor: GRColors.white.withOpacity(0.5),
        textTheme: _darkTextTheme,
        unselectedWidgetColor: GRColors.lightGrey,
        iconTheme: _darkIconTheme,
        bottomSheetTheme: _darkBottomSheetTheme,
        outlinedButtonTheme: _darkOutlinedButtonTheme,
        textButtonTheme: _darkTextButtonTheme,
      );

  /// Returns the correct color based on the current theme.
  ColorScheme get _lightColorScheme {
    return ColorScheme.light(
      primary: GRColors.skyBlue,
      primaryContainer: GRColors.lightBlue200,
      onPrimaryContainer: GRColors.oceanBlue,
      secondary: GRColors.paleSky,
      onSecondary: GRColors.white,
      secondaryContainer: GRColors.lightBlue200,
      onSecondaryContainer: GRColors.oceanBlue,
      tertiary: GRColors.secondary.shade700,
      onTertiary: GRColors.white,
      tertiaryContainer: GRColors.secondary.shade300,
      onTertiaryContainer: GRColors.secondary.shade700,
      error: GRColors.red,
      errorContainer: GRColors.red.shade200,
      onErrorContainer: GRColors.redWine,
      background: _backgroundColor,
      onBackground: GRColors.onBackground,
      surfaceVariant: GRColors.surface,
      onSurfaceVariant: GRColors.grey,
      inversePrimary: GRColors.crystalBlue,
    );
  }

  /// Returns the correct color based on the current theme.
  ColorScheme get _darkColorScheme => _lightColorScheme.copyWith(
        background: GRColors.black,
        onBackground: GRColors.white,
        surface: GRColors.black,
        onSurface: GRColors.lightGrey,
        primary: GRColors.blue,
        onPrimary: GRColors.oceanBlue,
        primaryContainer: GRColors.oceanBlue,
        onPrimaryContainer: GRColors.lightBlue200,
        secondary: GRColors.paleSky,
        onSecondary: GRColors.lightGrey,
        secondaryContainer: GRColors.liver,
        onSecondaryContainer: GRColors.brightGrey,
      );

  /// Returns the correct background color based on the current theme.
  Color get _backgroundColor => GRColors.white;

  /// Returns the correct [AppBarTheme] based on the current theme.
  AppBarTheme get _lightAppBarTheme {
    return AppBarTheme(
      iconTheme: _lightIconTheme,
      titleTextStyle: _lightTextTheme.titleMedium,
      elevation: 0,
      toolbarHeight: 64,
      backgroundColor: GRColors.white,
      toolbarTextStyle: _lightTextTheme.titleLarge,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  /// Returns the correct [AppBarTheme] based on the current theme.
  AppBarTheme get _darkAppBarTheme {
    return _lightAppBarTheme.copyWith(
      backgroundColor: GRColors.grey,
      iconTheme: _darkIconTheme,
      toolbarTextStyle: _darkTextTheme.titleLarge,
      titleTextStyle: _darkTextTheme.titleMedium,
    );
  }

  /// Returns the correct [IconThemeData] based on the current theme.
  IconThemeData get _lightIconTheme {
    return const IconThemeData(
      color: GRColors.black,
    );
  }

  /// Returns the correct [IconThemeData] based on the current theme.
  IconThemeData get _darkIconTheme {
    return const IconThemeData(
      color: GRColors.white,
    );
  }

  /// Returns the correct [DividerThemeData] based on the current theme.
  DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      color: GRColors.outlineLight,
      space: GRSpacing.lg,
      thickness: GRSpacing.xxxs,
      indent: GRSpacing.lg,
      endIndent: GRSpacing.lg,
    );
  }

  /// Returns the correct [TextTheme] based on the current theme.
  TextTheme get _lightTextTheme => lightUITextTheme;

  /// Returns the correct [TextTheme] based on the current theme.
  TextTheme get _darkTextTheme {
    return _lightTextTheme.apply(
      bodyColor: GRColors.white,
      displayColor: GRColors.white,
      decorationColor: GRColors.white,
    );
  }

  /// The UI text theme based on [GRTextStyle].
  static final lightUITextTheme = TextTheme(
    displayLarge: GRTextStyle.headline1,
    displayMedium: GRTextStyle.headline2,
    displaySmall: GRTextStyle.headline3,
    titleMedium: GRTextStyle.subtitle1,
    titleSmall: GRTextStyle.subtitle2,
    bodyLarge: GRTextStyle.bodyText1,
    bodyMedium: GRTextStyle.bodyText2,
    labelLarge: GRTextStyle.button,
    bodySmall: GRTextStyle.caption,
    labelSmall: GRTextStyle.overline,
  ).apply(
    bodyColor: GRColors.black,
    displayColor: GRColors.black,
    decorationColor: GRColors.black,
  );

  /// Returns the correct [ChipThemeData] based on the current theme.
  ChipThemeData get _chipTheme {
    return ChipThemeData(
      backgroundColor: GRColors.secondary.shade300,
      disabledColor: _backgroundColor,
      selectedColor: GRColors.secondary.shade700,
      secondarySelectedColor: GRColors.secondary.shade700,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      labelStyle: GRTextStyle.button.copyWith(color: GRColors.black),
      secondaryLabelStyle:
          GRTextStyle.labelSmall.copyWith(color: GRColors.white),
      brightness: Brightness.light,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: const BorderSide(),
      ),
    );
  }

  /// Returns the correct [ChipThemeData] based on the current theme.
  ChipThemeData get _darkChipTheme {
    return _chipTheme.copyWith(
      backgroundColor: GRColors.white,
      disabledColor: _backgroundColor,
      selectedColor: GRColors.secondary.shade700,
      secondarySelectedColor: GRColors.secondary.shade700,
      labelStyle: GRTextStyle.button.copyWith(
        color: GRColors.secondary.shade700,
      ),
      secondaryLabelStyle: GRTextStyle.labelSmall.copyWith(
        color: GRColors.black,
      ),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: GRColors.white, width: 2),
        borderRadius: BorderRadius.circular(22),
      ),
    );
  }

  /// Returns the correct [ButtonThemeData] based on the current theme.
  ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(GRSpacing.sm),
      ),
      padding: const EdgeInsets.symmetric(vertical: GRSpacing.lg),
      buttonColor: GRColors.blue,
      disabledColor: GRColors.lightGrey,
      height: 48,
      minWidth: 48,
    );
  }

  /// Returns the correct [ElevatedButtonThemeData] based on the current theme.
  ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        padding: const EdgeInsets.symmetric(vertical: GRSpacing.lg),
        textStyle: _lightTextTheme.labelLarge?.copyWith(
          fontWeight: GRFontWeight.bold,
        ),
        backgroundColor: GRColors.blue,
      ),
    );
  }

  /// Returns the correct [TextButtonThemeData] based on the current theme.
  TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _lightTextTheme.labelLarge?.copyWith(
          fontWeight: GRFontWeight.light,
        ),
        foregroundColor: GRColors.black,
      ),
    );
  }

  /// Returns the correct [TextButtonThemeData] based on the current theme.
  TextButtonThemeData get _darkTextButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _lightTextTheme.labelLarge?.copyWith(
          fontWeight: GRFontWeight.light,
        ),
        foregroundColor: GRColors.white,
      ),
    );
  }

  /// Returns the correct [BottomSheetThemeData] based on the current theme.
  BottomSheetThemeData get _lightBottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: GRColors.modalBackground,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(GRSpacing.lg),
          topRight: Radius.circular(GRSpacing.lg),
        ),
      ),
    );
  }

  /// Returns the correct [BottomSheetThemeData] based on the current theme.
  BottomSheetThemeData get _darkBottomSheetTheme {
    return _lightBottomSheetTheme.copyWith(
      backgroundColor: GRColors.grey,
    );
  }

  /// Returns the correct [ListTileThemeData] based on the current theme.
  ListTileThemeData get _listTileTheme {
    return const ListTileThemeData(
      iconColor: GRColors.onBackground,
      contentPadding: EdgeInsets.all(GRSpacing.lg),
    );
  }

  /// Returns the correct [SwitchThemeData] based on the current theme.
  SwitchThemeData get _switchTheme {
    return SwitchThemeData(
      thumbColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return GRColors.darkAqua;
        }
        return GRColors.black;
      }),
      trackColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return GRColors.primaryContainer;
        }
        return GRColors.paleSky;
      }),
    );
  }

  /// Returns the correct [ProgressIndicatorThemeData] based on the current
  /// theme.
  ProgressIndicatorThemeData get _progressIndicatorTheme {
    return const ProgressIndicatorThemeData(
      color: GRColors.darkAqua,
      circularTrackColor: GRColors.borderOutline,
    );
  }

  /// Returns the correct [TabBarTheme] based on the current theme.
  TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      labelStyle: GRTextStyle.button,
      labelColor: GRColors.darkAqua,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: GRSpacing.lg,
        vertical: GRSpacing.md + GRSpacing.xxs,
      ),
      unselectedLabelStyle: GRTextStyle.button,
      unselectedLabelColor: GRColors.mediumEmphasisSurface,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3,
          color: GRColors.darkAqua,
        ),
      ),
      indicatorSize: TabBarIndicatorSize.label,
    );
  }

  /// Returns the correct [BottomNavigationBarThemeData] based on the current
  /// theme.
  BottomNavigationBarThemeData get _bottomAppBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: GRColors.black,
      selectedItemColor: GRColors.white,
      unselectedItemColor: GRColors.white.withOpacity(0.74),
    );
  }

  /// Returns the correct [OutlinedButtonThemeData] based on the current theme.
  OutlinedButtonThemeData get _lightOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const StadiumBorder()),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => GRColors.white,
        ),
        side: MaterialStateProperty.resolveWith(
          (states) => const BorderSide(),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: GRSpacing.xlg,
            vertical: GRSpacing.lg,
          ),
        ),
        alignment: Alignment.center,
        textStyle: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? GRTextStyle.button.copyWith(
                  color: GRColors.black,
                  fontWeight: FontWeight.w500,
                )
              : GRTextStyle.button.copyWith(
                  color: states.contains(MaterialState.disabled)
                      ? GRColors.black
                      : GRColors.white,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ),
    );
  }

  /// Returns the correct [OutlinedButtonThemeData] based on the current theme.
  OutlinedButtonThemeData get _darkOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const StadiumBorder()),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => GRColors.black,
        ),
        side: MaterialStateProperty.resolveWith(
          (states) => const BorderSide(color: GRColors.white),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: GRSpacing.xlg,
            vertical: GRSpacing.lg,
          ),
        ),
        alignment: Alignment.center,
        textStyle: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? GRTextStyle.button.copyWith(
                  color: GRColors.white,
                  fontWeight: FontWeight.w500,
                )
              : GRTextStyle.button.copyWith(
                  color: states.contains(MaterialState.disabled)
                      ? GRColors.black
                      : GRColors.white,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ),
    );
  }
}
