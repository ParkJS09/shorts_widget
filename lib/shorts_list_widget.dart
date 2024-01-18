import 'package:flutter/material.dart';
import 'package:shorts_widget/data/short_item.dart';
import 'package:shorts_widget/widget/arrow_button.dart';
import 'package:shorts_widget/widget/shorts_item_widget.dart';

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
  int currentItem = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey[300],
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: currentItem > 0
                ? Center(
                    child: Container(
                      width: 100,
                      height: 150,
                      child: ShortsItemWidget(
                        isCurrentItem: false,
                        item: widget.item[currentItem - 1],
                      ),
                    ),
                  )
                : Container(),
          ),
          Center(
            child: Flexible(
              flex: 4,
              child: Container(
                width: 300,
                height: 500,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ArrowButton(
                      iconData: Icons.navigate_before,
                      onPressed: () {
                        if (currentItem > 0) {
                          setState(() {
                            currentItem -= 1;
                          });
                        } else {
                          //TODO Show SnackBar Error
                        }
                      },
                    ),
                    const SizedBox(
                      width: 14.0,
                    ),
                    ShortsItemWidget(
                      isCurrentItem: true,
                      item: widget.item[currentItem],
                    ),
                    const SizedBox(
                      width: 14.0,
                    ),
                    ArrowButton(
                      iconData: Icons.navigate_next,
                      onPressed: () {
                        if (currentItem + 1 < widget.item.length) {
                          setState(() {
                            currentItem += 1;
                          });
                        } else {
                          //TODO Show SnackBar Error
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: currentItem + 1 < widget.item.length
                ? Center(
                    child: Container(
                      width: 100,
                      height: 150,
                      child: ShortsItemWidget(
                        isCurrentItem: false,
                        item: widget.item[currentItem + 1],
                      ),
                    ),
                  )
                : Container(),
          ),
          // 다음 아이템이 있으면 추가
        ],
      ),
    );
  }
}
