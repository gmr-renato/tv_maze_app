import 'short_episode.dart';

// Attention: This entity was purposely created as anemic, without the implementation of validations
// according to the Domain Driven Design. It should only be used as a simple representation of data,
// without any guarantee of their integrity.

class Episode implements ShortEpisode {
  Episode({
    required this.uid,
    this.name,
    this.number,
    this.season,
    this.imageUrl,
    this.summary,
  });

  @override
  final int uid;
  @override
  final String? name;
  @override
  final int? number;
  @override
  final String? imageUrl;
  @override
  final int? season;
  final String? summary;
}
