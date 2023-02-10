import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../design_system/theme/utils/ds_theme_switcher_button.dart';
import '../application/all_series_controller.dart';
import 'widgets/all_series_list.dart';

class AllSeriespage extends StatelessWidget {
  const AllSeriespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Series Page'),
        actions: const [
          DSThemeSwitcherButton(),
        ],
      ),
      body: GetBuilder<AllSeriesController>(
        builder: (controller) => controller.obx(
          (state) => AllSeriesList(
            series: controller.allSeriesFromRepository.value!.series,
          ),
          onError: (error) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.report_problem_rounded),
                DSBoxSpacer(),
                Text('We had a problem, try again'),
              ],
            ),
          ),
          onEmpty: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.radio_button_unchecked_rounded),
                DSBoxSpacer(),
                Text('Sorry, nothing found'),
              ],
            ),
          ),
          onLoading: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Loading all series'),
                DSBoxSpacer(),
                CircularProgressIndicator.adaptive(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
