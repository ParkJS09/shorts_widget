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

  void onNextPressedItem() {
    if (currentItem + 1 < widget.item.length) {
      setState(() {
        currentItem += 1;
      });
    } else {
      //TODO Show SnackBar Error
    }
  }

  void onBeforePressedItem() {
    if (currentItem > 0) {
      setState(() {
        currentItem -= 1;
      });
    } else {
      //TODO Show SnackBar Error
    }
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey[300],
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: currentItem > 0
                ? GestureDetector(
                    onTap: onBeforePressedItem,
                    child: Center(
                      child: Container(
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: ShortsItemWidget(
                          isCurrentItem: false,
                          item: widget.item[currentItem - 1],
                        ),
                      ),
                    ),
                  )
                : Container(),
          ),
          Center(
            child: Flexible(
              flex: 4,
              child: SizedBox(
                width: deviceWidth * 0.4,
                height: deviceHeight * 0.6,
                child: Stack(
                  children: [
                    ShortsItemWidget(
                      isCurrentItem: true,
                      item: widget.item[currentItem],
                    ),
                    if (currentItem != 0)
                      Align(
                        alignment: const FractionalOffset(0.01, 0.5),
                        child: ArrowButton(
                          iconData: Icons.navigate_before,
                          onPressed: onBeforePressedItem,
                        ),
                      ),
                    if (currentItem + 1 < widget.item.length)
                      Align(
                        alignment: const FractionalOffset(0.99, 0.5),
                        child: ArrowButton(
                          iconData: Icons.navigate_next,
                          onPressed: onNextPressedItem,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: currentItem + 1 < widget.item.length
                ? GestureDetector(
                    onTap: onNextPressedItem,
                    child: Center(
                      child: Container(
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.3,
                        child: ShortsItemWidget(
                          isCurrentItem: false,
                          item: widget.item[currentItem + 1],
                        ),
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
