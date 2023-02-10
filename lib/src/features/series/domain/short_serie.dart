// Attention: This entity was purposely created as anemic, without the implementation of validations
// according to the Domain Driven Design. It should only be used as a simple representation of data,
// without any guarantee of their integrity.

// ignore_for_file: avoid_dynamic_calls

class ShortSerie {
  ShortSerie({
    required this.uid,
    this.name,
    this.imageUrl,
    this.language,
    this.averageRating,
  });

  factory ShortSerie.fromJson(Map<String, dynamic> map) {
    return ShortSerie(
      uid: map['id'] as int,
      name: map['name'] != null ? map['name'] as String : null,
      imageUrl: map['image']['original'] != null
          ? map['image']['original'] as String
          : null,
      language: map['language'] != null ? map['language'] as String : null,
      averageRating: map['rating']['average'] != null
          ? num.tryParse(map['rating']['average'].toString())!.toDouble()
          : null,
    );
  }

  final int uid;
  final String? name;
  final String? imageUrl;
  final String? language;
  final double? averageRating;
}

class ShortSeriesList {
  ShortSeriesList(this.series);

  factory ShortSeriesList.fromJson(List<dynamic> json) {
    final List<ShortSerie> list = [];

    json.forEach((element) {
      list.add(ShortSerie.fromJson(element as Map<String, dynamic>));
    });

    return ShortSeriesList(list);
  }

  final List<ShortSerie> series;
}
