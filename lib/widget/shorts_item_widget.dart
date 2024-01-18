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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          14.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${widget.item.title}',
          ),
        ],
      ),
    );
  }
}
