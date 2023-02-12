import 'short_episode.dart';

class ShortEpisodeList {
  ShortEpisodeList(this.seasonsAndEpisodes);

  factory ShortEpisodeList.fromJson(List<dynamic> json) {
    final Map<int, List<ShortEpisode>> seasonsAndEpisodes = {};

    json.forEach(
      (element) {
        final episode = ShortEpisode.fromJson(element as Map<String, dynamic>);

        if (seasonsAndEpisodes[episode.season] != null) {
          seasonsAndEpisodes[episode.season]!.add(episode);
        } else {
          seasonsAndEpisodes[episode.season!] = [episode];
        }
      },
    );

    return ShortEpisodeList(seasonsAndEpisodes);
  }
  final Map<int, List<ShortEpisode>> seasonsAndEpisodes;
}
