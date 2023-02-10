import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../design_system/theme/utils/ds_theme_switcher_button.dart';
import '../../features/series/application/list_series_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        actions: const [
          DSThemeSwitcherButton(),
        ],
      ),
      body: GetBuilder<ListSeriesController>(
        builder: (controller) => Obx(
          () {
            final status = controller.readAllStatus.value;
            if (status.isEmpty) {
              return const Text('Empty');
            } else if (status.isError) {
              return const Text('Error');
            } else if (status.isLoading) {
              return const Text('Loading');
            } else if (status.isSuccess) {
              return ListView.builder(
                itemCount:
                    controller.allSeriesFromRepository.value!.series.length,
                itemBuilder: (context, index) {
                  return ListTile();
                },
              );
            } else {
              return const Text('Not know');
            }
          },
        ),
      ),
    );
  }
}
