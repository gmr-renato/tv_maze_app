import 'short_serie.dart';

// TODO: this "entity" can be removed

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
