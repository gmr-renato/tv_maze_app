// ignore_for_file: avoid_dynamic_calls

import 'short_episode.dart';
import 'short_serie.dart';

class Serie implements ShortSerie {
  const Serie({
    required this.uid,
    required this.name,
    required this.imageUrl,
    required this.language,
    required this.averageRating,
    required this.scheduleDays,
    required this.scheduleTime,
    required this.genres,
    required this.summary,
    required this.shortEpisodeList,
  });

  factory Serie.fromJson(
    Map<String, dynamic> map,
    List<ShortEpisode> shortEpisodeList,
  ) {
    return Serie(
      uid: map['id'] as int,
      name: map['name'] as String,
      imageUrl: map['image']['original'] as String,
      language: map['language'] != null ? map['language'] as String : null,
      averageRating: map['rating']['average'] != null
          ? num.tryParse(map['rating']['average'].toString())!.toDouble()
          : null,
      scheduleDays: map['schedule']['days'] as List<dynamic>,
      scheduleTime: map['schedule']['time'] as String,
      genres: map['genres'] as List<dynamic>,
      summary: map['summary'] as String,
      shortEpisodeList: shortEpisodeList,
    );
  }

  @override
  Map<String, dynamic> toMap(ShortSerie shortSerie) {
    return <String, dynamic>{
      'uid': shortSerie.uid,
      'name': shortSerie.name,
      'imageUrl': shortSerie.imageUrl,
      'language': shortSerie.language,
      'averageRating': shortSerie.averageRating,
    };
  }

  @override
  final int uid;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String? language;
  @override
  final double? averageRating;
  final List<dynamic> scheduleDays;
  final String scheduleTime;
  final List<dynamic> genres;
  final String summary;
  final List<ShortEpisode> shortEpisodeList;
}
