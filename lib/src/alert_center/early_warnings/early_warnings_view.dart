import 'package:decyfir/src/alert_center/early_warning_list_element.dart';
import 'package:decyfir/src/alert_center/early_warnings/early_warnings_controller.dart';
import 'package:decyfir/src/widgets/risk_widget.dart';
import 'package:flutter/material.dart';

class EarlyWarningsView extends StatelessWidget {
  const EarlyWarningsView({super.key, required this.controller});

  static const routeName = '/early_warnings';

  final EarlyWarningsController controller;

  @override
  Widget build(BuildContext context) {
    controller.getEarlyWarn();
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFE6ECEC)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Text>[
                    Text('Dashboard',
                        style: TextStyle(fontSize: 12, color: Colors.black87)),
                    Text('Early Warnings',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600))
                  ],
                ),
                //const Icon(FontAwesomeIcons.sort, size: 30)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child:
                const Text('Find information related to your attack surface'),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child: Row(
              children: [
                if (controller.riskLevelsSelected.contains("Critical"))
                  GestureDetector(
                      onTap: () => controller.toggleState(0),
                      child: createRiskLevelChip('Critical', controller.riskLevelActive[0],
                          controller.riskLevelCounts[0], context)),
                if (controller.riskLevelsSelected.contains("High"))
                  GestureDetector(
                      onTap: () => controller.toggleState(1),
                      child: createRiskLevelChip('High', controller.riskLevelActive[1],
                          controller.riskLevelCounts[1], context)),
                if (controller.riskLevelsSelected.contains("Medium"))
                  GestureDetector(
                      onTap: () => controller.toggleState(2),
                      child: createRiskLevelChip('Medium', controller.riskLevelActive[2],
                          controller.riskLevelCounts[2], context))
              ],
            ),
          ),
          controller.loading
              ? SizedBox(
                  height: MediaQuery.of(context).size.height - 300,
                  child: const Center(
                      child: CircularProgressIndicator(
                    color: Colors.black,
                  )),
                )
              : Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height - 300,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    restorationId: 'alertCenterList',
                    
                    itemCount: controller.earlyWarningsData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return controller.earlyWarningsData.isEmpty
                          ? const Center(
                              child: Text('No alerts in this category'))
                          : EarlyWarningListElement(item: controller.earlyWarningsData[index]);
                    },
                  )),
        ],
      ),
    );
  }
}
