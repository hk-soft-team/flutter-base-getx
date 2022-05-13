import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

void handleScreenSize() {
  /**
   * MediaQuery.of(context).size             // 앱 화면 크기 size  Ex> Size(360.0, 692.0)
   * MediaQuery.of(context).size.height      // 앱 화면 높이 double Ex> 692.0 
   * MediaQuery.of(context).size.width       // 앱 화면 넓이 double Ex> 360.0
   * MediaQuery.of(context).devicePixelRatio // 화면 배율    double Ex> 4.0
   * MediaQuery.of(context).padding.top      // 상단 상태 표시줄 높이 double Ex> 24.0
   */
  BuildContext? context = Get.context;

  Logger().d('displaySize : ${MediaQuery.of(context!).size}');
  Logger().d('displayHeight : ${MediaQuery.of(context).size.height}');
  Logger().d('displayWidth : ${MediaQuery.of(context).size.width}');
  Logger().d('devicePixelRatio : ${MediaQuery.of(context).devicePixelRatio}');
  Logger().d('statusBarHeight : ${MediaQuery.of(context).padding.top}');
  Logger().d('window.physicalSize : ${window.physicalSize}');
}
