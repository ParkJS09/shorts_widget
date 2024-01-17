import 'package:flutter/material.dart';
import 'package:shorts_widget/data/short_item.dart';

class ShortsListWidget extends StatefulWidget {
  const ShortsListWidget({
    super.key,
    required this.item,
  });
  final List<ShortsItem> item;
  @override
  State<ShortsListWidget> createState() => _ShortsListWidgetState();
}

class _ShortsListWidgetState extends State<ShortsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
