import 'package:decyfir/src/alert_center/alert_center_latest_alerts_list.dart';
import 'package:decyfir/src/alert_center/alert_center_early_warnings.dart';
import 'package:decyfir/src/authentication/reset_password.dart';
import 'package:decyfir/src/common/constants.dart';
import 'package:decyfir/src/faq.dart';
import 'package:decyfir/src/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'alert_center/alert_center_details_view.dart';
import 'alert_center/alert_center.dart';
import 'authentication/login.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: Constants.lightScheme,
            typography: Typography.material2021(platform: TargetPlatform.android)
            //primaryColor: const Color(0xFF37474F)
          ),
          darkTheme: ThemeData(colorScheme: Constants.darkScheme),
          themeMode: settingsController.themeMode,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);
                  case AlertCenterDetailsView.routeName:
                    return const AlertCenterDetailsView();
                  case AlertCenter.routeName:
                    return AlertCenter(username: '', controller: settingsController);
                  case Login.routeName:
                    return Login(controller: settingsController);
                  case AlertCenterEarlyWarnings.routeName:
                    return AlertCenterEarlyWarnings(controller: settingsController);
                  case AlertCenterLatestAlerts.routeName:
                    return AlertCenterLatestAlerts(controller: settingsController);
                  case Profile.routeName:
                    return const Profile();
                  case FaqView.routeName:
                    return const FaqView();
                  case ResetPassword.routeName:
                    return const ResetPassword(isInAppCall: false);
                  default:
                    return Login(controller: settingsController);
                }
              },
            );
          },
        );
      },
    );
  }
}
