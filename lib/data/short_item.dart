import 'package:shorts_widget/data/short_type.dart';

class ShortsItem {
  ShortsItem({
    required this.type,
    required this.url,
    required this.title,
  });
  ShortType type;
  String url;
  String title;
}
