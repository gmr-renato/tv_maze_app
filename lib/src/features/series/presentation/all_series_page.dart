import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../design_system/theme/ds_properties.dart';
import '../../../../design_system/theme/ds_spacing.dart';
import '../../../../design_system/theme/utils/ds_theme_switcher_button.dart';
import '../../../global/presentation/loading_with_message.dart';
import '../../../global/presentation/message_and_retry.dart';
import '../application/all_series_controller.dart';
import 'widgets/all_series_list.dart';

class AllSeriespage extends StatelessWidget {
  const AllSeriespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Series'),
        actions: const [
          DSThemeSwitcherButton(),
        ],
      ),
      body: GetBuilder<AllSeriesController>(
        builder: (controller) => SafeArea(
          child: Column(
            children: [
              Expanded(
                child: controller.obx(
                  (state) => AllSeriesList(
                    series: controller.seriesByPage
                        .value[controller.currentPage.value]!.series,
                  ),
                  onError: (error) => Center(
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(DSSpacing.large),
                        child: MessageAndRetry(
                          message: 'We had a problem, try again!',
                          isError: true,
                          onRetryCallback: () {
                            controller.status;
                          },
                        ),
                      ),
                    ),
                  ),
                  onEmpty: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(DSSpacing.large),
                      child: MessageAndRetry(
                        message: 'Sorry, no series found!',
                        onRetryCallback: () {
                          controller.status;
                        },
                      ),
                    ),
                  ),
                  onLoading: const Center(
                    child: LoadingWithMessage(
                      message: 'Loading all series',
                    ),
                  ),
                ),
              ),
              // TODO: improve list (center selected element and allow to go to first)
              Column(
                children: [
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (index) => InkWell(
                        onTap: () => controller.onPageChanged(index),
                        borderRadius:
                            const BorderRadius.all(DSProperties.radiusXXLarge),
                        child: Padding(
                          padding: const EdgeInsets.all(DSSpacing.medium),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == controller.currentPage.value
                                  ? Theme.of(context).primaryColor
                                  : null,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(DSSpacing.medium),
                              child: Text(
                                '$index',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
