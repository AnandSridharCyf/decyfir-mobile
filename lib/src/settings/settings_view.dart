import 'package:flutter/material.dart';

import 'settings_controller.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsView extends StatelessWidget {
  const SettingsView({super.key, required this.controller});

  static const routeName = '/settings';

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            onPressed: () => Navigator.pop(context),
          ),
          shadowColor: Theme.of(context).colorScheme.onPrimaryContainer,
          elevation: 1,
          title: Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/decyfir_logo.png'),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 7, 16, 13),
              child: const Text(
                'Settings',
                style: TextStyle(fontSize: 22, color: Colors.red),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 7, 16, 7),
              decoration: BoxDecoration(color: Theme.of(context).dividerColor),
              child: const Text('Choose the App Theme you like'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
              child: DropdownButton<ThemeMode>(
                // Read the selected themeMode from the controller
                value: controller.themeMode,
                // Call the updateThemeMode method any time the user selects a theme.
                onChanged: controller.updateThemeMode,
                items: const [
                  DropdownMenuItem(
                    value: ThemeMode.system,
                    child: Text('System Theme'),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text('Light Theme'),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text('Dark Theme'),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 7, 16, 7),
              decoration: BoxDecoration(color: Theme.of(context).dividerColor),
              child: const Text('Select Risk levels to show'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 3, 16, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionChip(
                    label: const Text('CRITICAL'),
                    onPressed: () {
                      controller.toggleRiskActive(0);
                    },
                    avatar:
                        Icon(Icons.brightness_1, color: controller.getColor(0)),
                    pressElevation: 2,
                  ),
                  ActionChip(
                    label: const Text('HIGH'),
                    onPressed: () => controller.toggleRiskActive(1),
                    avatar:
                        Icon(Icons.brightness_1, color: controller.getColor(1)),
                    pressElevation: 2,
                  ),
                  ActionChip(
                    label: const Text('MEDIUM'),
                    onPressed: () => controller.toggleRiskActive(2),
                    avatar:
                        Icon(Icons.brightness_1, color: controller.getColor(2)),
                    pressElevation: 2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
