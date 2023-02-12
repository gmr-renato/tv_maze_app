import 'package:flutter/material.dart';

import '../../../../../design_system/atoms/box_spacer/ds_box_spacer.dart';
import '../../../series/domain/short_serie.dart';
import '../../../series/presentation/widgets/serie_list_tile.dart';

class AllFavoritesList extends StatelessWidget {
  const AllFavoritesList({
    super.key,
    required this.series,
  });

  final List<ShortSerie> series;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      child: ListView.separated(
        cacheExtent: 30,
        itemCount: series.length,
        itemBuilder: (context, index) => SerieListTile(serie: series[index]),
        separatorBuilder: (context, index) {
          return const DSBoxSpacer.xxSmall();
        },
      ),
    );
  }
}
