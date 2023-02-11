// Attention: This entity was purposely created as anemic, without the implementation of validations
// according to the Domain Driven Design. It should only be used as a simple representation of data,
// without any guarantee of their integrity.

class ShortEpisode {
  const ShortEpisode({
    required this.uid,
    this.name,
    this.number,
    this.season,
  });

  factory ShortEpisode.fromJson(Map<String, dynamic> map) {
    return ShortEpisode(
      uid: map['id'] as int,
      name: map['name'] as String,
      number: map['number'] as int,
      season: map['season'] as int,
    );
  }
  final int uid;
  final String? name;
  final int? number;
  final int? season;
}

class ShortEpisodeList {
  ShortEpisodeList(this.episodesList);

  factory ShortEpisodeList.fromJson(List<dynamic> json) {
    final List<ShortEpisode> list = [];

    json.forEach(
      (element) {
        list.add(ShortEpisode.fromJson(element as Map<String, dynamic>));
      },
    );

    return ShortEpisodeList(list);
  }
  final List<ShortEpisode> episodesList;
}
