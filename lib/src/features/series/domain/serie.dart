// ignore_for_file: avoid_dynamic_calls

import 'short_episode.dart';
import 'short_serie.dart';

class Serie implements ShortSerie {
  const Serie({
    required this.uid,
    required this.name,
    required this.imageUrl,
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
      scheduleDays: map['schedule']['days'] as List<dynamic>,
      scheduleTime: map['schedule']['time'] as String,
      genres: map['genres'] as List<dynamic>,
      summary: map['summary'] as String,
      shortEpisodeList: shortEpisodeList,
    );
  }

  @override
  final int uid;
  @override
  final String name;
  @override
  final String imageUrl;
  final List<dynamic> scheduleDays;
  final String scheduleTime;
  final List<dynamic> genres;
  final String summary;
  final List<ShortEpisode> shortEpisodeList;
}
