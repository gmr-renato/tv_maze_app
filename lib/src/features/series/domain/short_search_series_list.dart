import 'short_serie.dart';

// TODO: this "entity" can be removed
class ShortSearchSeriesList {
  ShortSearchSeriesList(this.series);

  factory ShortSearchSeriesList.fromJson(List<dynamic> json) {
    final List<ShortSerie> list = [];

    for (final show in json) {
      final searchedElement = show as Map<String, dynamic>;
      list.add(
        ShortSerie.fromJson(
          searchedElement['show'] as Map<String, dynamic>,
        ),
      );
    }

    return ShortSearchSeriesList(list);
  }

  final List<ShortSerie> series;
}
