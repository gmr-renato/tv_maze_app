import 'package:flutter/material.dart';

import '../../domain/short_episode_list.dart';
import 'episode_list_tile.dart';

class SeasonsAndEpisodes extends StatelessWidget {
  const SeasonsAndEpisodes({
    super.key,
    required this.episodes,
  });

  final ShortEpisodeList episodes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        episodes.seasonsAndEpisodes.length,
        // TODO[IMPROVE_UX]: sticky header for season tiles:
        // https://pub.dev/packages/sticky_headers
        (seasonIndex) => ExpansionTile(
          backgroundColor: Theme.of(context).primaryColorDark,
          collapsedBackgroundColor: Theme.of(context).primaryColorDark,
          textColor: Theme.of(context).colorScheme.onPrimary,
          collapsedTextColor: Theme.of(context).colorScheme.onPrimary,
          iconColor: Theme.of(context).colorScheme.onPrimary,
          collapsedIconColor: Theme.of(context).colorScheme.onPrimary,
          title: Text('Season ${seasonIndex + 1}'),
          subtitle: Text(
            '${episodes.seasonsAndEpisodes[seasonIndex + 1]!.length.toString()} episodes',
          ),
          children: List.generate(
            episodes.seasonsAndEpisodes[seasonIndex + 1]!.length,
            (episodeIndex) => EpisodeListTile(
              episode:
                  episodes.seasonsAndEpisodes[seasonIndex + 1]![episodeIndex],
            ),
          ),
        ),
      ),
    );
  }
}
