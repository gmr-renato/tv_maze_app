import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../design_system/theme/utils/ds_theme_switcher_button.dart';
import '../../features/series/application/list_series_controller.dart';
import '../../features/series/application/read_serie_controller.dart';
import '../../features/series/infrastructure/series_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  late final ListSeriesController controller;
  late final ReadSerieController readController;

  @override
  void initState() {
    super.initState();
    controller = Get.put<ListSeriesController>(
      ListSeriesController(
        SeriesRepository(),
      ),
    );
    readController = Get.put<ReadSerieController>(
      ReadSerieController(
        SeriesRepository(),
        2,
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: const [
          DSThemeSwitcherButton(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () {
                controller.readAllSeries(1);
              },
              child: const Text('Read All Series'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.search('Canada');
              },
              child: const Text('Search'),
            ),
            ElevatedButton(
              onPressed: () {
                readController.getSerie();
              },
              child: const Text('Get Serie'),
            ),
            ElevatedButton(
              onPressed: () {
                readController.getEpisode(1);
              },
              child: const Text('Get episode'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
