// Attention: This entity was purposely created as anemic, without the implementation of validations
// according to the Domain Driven Design. It should only be used as a simple representation of data,
// without any guarantee of their integrity.

// ignore_for_file: avoid_dynamic_calls

class ShortEpisode {
  const ShortEpisode({
    required this.uid,
    this.name,
    this.number,
    this.imageUrl,
    this.season,
  });

  factory ShortEpisode.fromJson(Map<String, dynamic> map) {
    return ShortEpisode(
      uid: map['id'] as int,
      name: map['name'] as String,
      imageUrl: map['image']?['original'] != null
          ? map['image']['original'] as String
          : null,
      number: map['number'] as int,
      season: map['season'] as int,
    );
  }
  final int uid;
  final String? name;
  final int? number;
  final String? imageUrl;
  final int? season;
}
