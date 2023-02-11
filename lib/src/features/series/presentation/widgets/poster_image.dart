import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PosterImage extends StatelessWidget {
  const PosterImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: MediaQuery.of(context).size.width,
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (
        context,
        url,
        progress,
      ) =>
          Material(
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: const CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
