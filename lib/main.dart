import 'package:flutter/material.dart';
import 'package:flutter_chart_new/ui/main_bar_item.dart';

import 'ui/main_item.dart';
import 'ui/main_line_item.dart';
import 'ui/main_pie_item.dart';
import 'ui/main_radar_item.dart';
import 'ui/main_title_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FlutterChart Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<MainItem> _items = List.of([
    MainTitleItem('Line Chart'),
    MainLineItem(),
    MainTitleItem('Bar Chart'),
    MainBarItem(),
    MainTitleItem('Pie Chart'),
    MainPieItem(),
    MainTitleItem('Radar Chart'),
    MainRadarItem(),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (BuildContext context, int index) =>
                _items[index].itemContent()
        )
    );
  }
}