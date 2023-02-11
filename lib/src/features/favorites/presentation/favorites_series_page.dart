import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../design_system/theme/ds_spacing.dart';
import '../../../../design_system/theme/utils/ds_theme_switcher_button.dart';
import '../../../global/presentation/loading_with_message.dart';
import '../../../global/presentation/message_and_retry.dart';
import '../application/favorites_series_controller.dart';
import 'widgets/all_favorites_list.dart';

class FavoritesSeriesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesSeriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Favorites'),
        actions: const [
          DSThemeSwitcherButton(),
        ],
      ),
      body: GetBuilder<FavoritesSeriesController>(
        builder: (controller) {
          return controller.obx(
            (state) => AllFavoritesList(
              series: controller.favoritesSeries.value,
            ),
            onError: (error) => SafeArea(
              child: Center(
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
              child: Center(
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
            ),
            onLoading: const SafeArea(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(DSSpacing.large),
                  child: LoadingWithMessage(
                    message: 'Loading all series',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
