import 'package:flutter/material.dart';

import '../../../design_system/atoms/box_spacer/ds_box_spacer.dart';

class LoadingWithMessage extends StatelessWidget {
  const LoadingWithMessage({
    super.key,
    this.message,
  });

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(message ?? 'Loading'),
        const DSBoxSpacer(),
        const CircularProgressIndicator.adaptive(),
      ],
    );
  }
}
