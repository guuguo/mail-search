import 'package:get/get.dart';
import 'package:mail_search/page/detail/binding.dart';
import 'package:mail_search/page/detail/view.dart';
import 'package:mail_search/page/main/binding.dart';
import 'package:mail_search/page/main/view.dart';

class RouteConfig {
  static const String mail_list = "/mail/list";
  static const String mail_detail = "/mail/detail";

  static final List<GetPage> getPages = [
    GetPage(
      name: mail_list,
      page: () => MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: mail_detail,
      page: () => DetailPage(),
      binding: DetailBinding(),
    ),
  ];
}
