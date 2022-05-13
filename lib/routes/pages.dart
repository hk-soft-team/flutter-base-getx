import 'package:example/binding/splash/splash_binding.dart';
import 'package:example/routes/router.dart';
import 'package:example/ui/splash/splash_ui.dart';
import 'package:get/get.dart';

class Pages {
  static final routes = [
    GetPage(
      title: "스플래시 화면",
      name: Routes.spalsh,
      page: () => const SplashUi(),
      binding: SplashBinding(),
    ),
  ];
}
