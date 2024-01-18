import 'package:flutter/material.dart';
import 'package:shorts_widget/data/short_item.dart';
import 'package:shorts_widget/data/short_type.dart';
import 'package:shorts_widget/shorts_list_widget.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  List<ShortsItem> list = [
    ShortsItem(
      type: ShortType.IMAGE,
      url: '',
      title: 'test 1',
    ),
    ShortsItem(
      type: ShortType.IMAGE,
      url: '',
      title: 'test 2',
    ),
    ShortsItem(
      type: ShortType.IMAGE,
      url: '',
      title: 'test 3',
    ),
    ShortsItem(
      type: ShortType.IMAGE,
      url: '',
      title: 'test 4',
    ),
    ShortsItem(
      type: ShortType.IMAGE,
      url: '',
      title: 'test 5',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ShortsListWidget(
        item: list,
      ),
    );
  }
}
