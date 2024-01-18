import 'package:flutter/material.dart';
import 'package:shorts_widget/data/short_item.dart';

class ShortsItemWidget extends StatefulWidget {
  const ShortsItemWidget(
      {super.key, required this.isCurrentItem, required this.item});

  final bool isCurrentItem;
  final ShortsItem item;

  @override
  State<ShortsItemWidget> createState() => _ShortsItemWidgetState();
}

class _ShortsItemWidgetState extends State<ShortsItemWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: widget.isCurrentItem ? size.width * 0.1 : size.width * 0.3,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Text(
        '${widget.item.title}',
      ),
    );
  }
}
