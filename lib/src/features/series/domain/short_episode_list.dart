import 'episode.dart';

class ShortEpisodeList {
  ShortEpisodeList(this.seasonsAndEpisodes);

  factory ShortEpisodeList.fromJson(List<dynamic> json) {
    final Map<int, List<Episode>> seasonsAndEpisodes = {};

    json.forEach(
      (element) {
        final episode = Episode.fromJson(element as Map<String, dynamic>);

        if (seasonsAndEpisodes[episode.season] != null) {
          seasonsAndEpisodes[episode.season]!.add(episode);
        } else {
          seasonsAndEpisodes[episode.season!] = [episode];
        }
      },
    );

    return ShortEpisodeList(seasonsAndEpisodes);
  }
  final Map<int, List<Episode>> seasonsAndEpisodes;
}
