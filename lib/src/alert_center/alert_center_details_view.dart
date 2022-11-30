import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class AlertCenterDetailsView extends StatelessWidget {
  const AlertCenterDetailsView({super.key});

  static const routeName = '/alert_center_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
