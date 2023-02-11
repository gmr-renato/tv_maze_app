import 'package:html/parser.dart';

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
    this.summary,
    this.image,
  });

  factory Episode.fromJson(Map<String, dynamic> json) {
    String returnNameValue(Map<String, dynamic> json) {
      if (json.containsKey('show')) {
        final name = (json['show'] as Map<String, dynamic>)['name'];

        return name.toString();
      } else {
        return json['name'].toString();
      }
    }

    String parseHtmlString(String htmlString) {
      final document = parse(htmlString);

      return parse(document.body!.text).documentElement!.text;
    }

    return Episode(
      uid: json['id'] as int,
      name: returnNameValue(json),
      number: json['number'] as int,
      season: json['season'] as int,
      summary: parseHtmlString(json['summary'].toString()),
      image: (json['image'] as Map<String, dynamic>)['medium'].toString(),
    );
  }
  @override
  final int uid;
  @override
  final String? name;
  @override
  final int? number;
  @override
  final int? season;
  final String? summary;
  final String? image;
}
