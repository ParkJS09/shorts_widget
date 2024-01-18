import 'package:flutter/material.dart';

class DynamicCenterWidget extends StatelessWidget {
  final List<Widget> widgets;

  DynamicCenterWidget({Key? key, required this.widgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> rowChildren = [];

    if (widgets.length == 1) {
      // 한 개의 위젯만 있을 때, 이를 가운데에 배치
      rowChildren.add(Spacer());
      rowChildren.add(widgets[0]);
      rowChildren.add(Spacer());
    } else if (widgets.length >= 2) {
      // 두 개 이상의 위젯이 있을 때
      int centerIndex = widgets.length ~/ 2; // 중앙 인덱스 계산

      // 중앙 인덱스 이전 위젯들 추가
      rowChildren.addAll(widgets.sublist(0, centerIndex));

      // 중앙 위젯을 위한 Spacer 추가
      rowChildren.add(Spacer());
      rowChildren.add(widgets[centerIndex]);
      rowChildren.add(Spacer());

      // 중앙 인덱스 이후 위젯들 추가
      rowChildren.addAll(widgets.sublist(centerIndex + 1));
    }

    return Row(
      children: rowChildren,
    );
  }
}
