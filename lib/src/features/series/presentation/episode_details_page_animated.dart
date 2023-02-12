import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../global/constants/constants.dart';
import '../../../global/presentation/global_presentation_constants.dart';
import '../domain/episode.dart';
import 'widgets/episode_details.dart';
import 'widgets/episode_poster_name_bar.dart';
import 'widgets/poster_gradient_bar.dart';
import 'widgets/poster_image.dart';

/// Open this page from [SerieListTile] to achieve a cool navigation animation.
class EpisodeDetailsPageAnimated extends StatefulWidget {
  const EpisodeDetailsPageAnimated({
    super.key,
    required this.episode,
  });

  final Episode episode;

  @override
  State<EpisodeDetailsPageAnimated> createState() =>
      _EpisodeDetailsPageAnimatedState();
}

class _EpisodeDetailsPageAnimatedState
    extends State<EpisodeDetailsPageAnimated> {
  double elementOpacity = 0;

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => Future.delayed(GlobalPresentationConstants.pageTransitionDuration)
          .then(
        (value) => setState(() => elementOpacity = 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView(
          children: [
            Stack(
              children: [
                Hero(
                  tag: widget.episode.imageUrl ?? Constants.placeholderImage,
                  child: PosterImage(
                    imageUrl:
                        widget.episode.imageUrl ?? Constants.placeholderImage,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AnimatedOpacity(
                    opacity: elementOpacity,
                    curve: Curves.easeInOut,
                    duration:
                        GlobalPresentationConstants.pageTransitionDuration,
                    child: const PosterGradientBar(),
                  ),
                ),
                // TODO[IMPROVE_UX]: add serie name to this page
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: AnimatedOpacity(
                    opacity: elementOpacity,
                    curve: Curves.easeInOut,
                    duration:
                        GlobalPresentationConstants.pageTransitionDuration,
                    child: EpisodePosterNameBar(
                      episodeName: widget.episode.name!,
                    ),
                  ),
                ),
              ],
            ),
            EpisodeDetails(episode: widget.episode),
          ],
        ),
      ),
    );
  }
}
