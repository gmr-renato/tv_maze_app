import 'package:flutter/material.dart';

import '../../../design_system/atoms/box_spacer/ds_box_spacer.dart';

class MessageAndRetry extends StatelessWidget {
  const MessageAndRetry({
    super.key,
    this.message,
    this.onRetryCallback,
    this.isError = false,
  });

  final String? message;
  final bool isError;
  final Function()? onRetryCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isError
                    ? Icons.report_problem_rounded
                    : Icons.radio_button_unchecked_rounded,
              ),
              const DSBoxSpacer(),
              Text(message ?? 'Sorry, we got a problem'),
              const DSBoxSpacer(),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: onRetryCallback,
                child: const Text('Tap here to retry'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
