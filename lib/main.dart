import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mail_search/global/custom/my_theme.dart';
import 'package:mail_search/global/logic.dart';
import 'package:get/get.dart';
import 'package:mail_search/route_config.dart';
import 'package:mail_search/theme/darkmode.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

        ///这是设置状态栏的图标和字体的颜色
        ///Brightness.light  一般都是显示为白色
        ///Brightness.dark 一般都是显示为黑色
        statusBarIconBrightness: Brightness.light
    );
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => GlobalLogic());
    return GetBuilder<GlobalLogic>(
        builder: (controller) =>
            GetMaterialApp(
              // theme:themeMode== ,
              // themeMode: controller.themeMode,
              initialRoute: RouteConfig.mail_list,
              getPages: RouteConfig.getPages,
              title: '邮箱查询',
              theme: kLightDiaryTheme.data,
              darkTheme: kDarkDiaryTheme.data,
            ));
  }
}
