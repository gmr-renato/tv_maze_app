import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../../design_system/theme/ds_spacing.dart';
import '../../../../design_system/theme/utils/ds_theme_switcher_button.dart';
import '../../../global/presentation/debouncer.dart';
import '../../../global/presentation/loading_with_message.dart';
import '../../../global/presentation/message_and_retry.dart';
import '../application/search_by_name_controller.dart';
import 'widgets/search_series_list.dart';

class SearchSeriespage extends StatelessWidget {
  const SearchSeriespage({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final debouncer = Debouncer(milliseconds: 500);

    return GetBuilder<SearchByNameController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: TextField(
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(
                RegExp("[0-9a-zA-Z]"),
              ),
            ],
            controller: textController,
            autofocus: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            onChanged: (value) => debouncer.run(
              () => controller.search(value),
            ),
            decoration: const InputDecoration(
              hintText: 'Search some series',
              border: InputBorder.none,
            ),
          ),
          actions: const [
            DSThemeSwitcherButton(),
          ],
        ),
        body: controller.obx(
          (state) => SearchSeriesList(
            series: controller.searchSeriesResult.value!.series,
          ),
          onError: (error) => Center(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(DSSpacing.large),
                child: MessageAndRetry(
                  message: 'We had a problem, enter another term to search',
                  isError: true,
                  onRetryCallback: () {},
                ),
              ),
            ),
          ),
          onEmpty: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(DSSpacing.large),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.radio_button_unchecked_rounded,
                    ),
                    DSBoxSpacer(),
                    Text('Type something to search'),
                  ],
                ),
              ),
            ),
          ),
          onLoading: const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(DSSpacing.large),
              child: Center(
                child: LoadingWithMessage(
                  message: 'Searching for series',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
