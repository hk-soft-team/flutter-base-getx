import 'package:example/binding/splash/splash_binding.dart';
import 'package:example/routes/pages.dart';
import 'package:example/ui/splash/splash_ui.dart';
import 'package:example/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  // Widget Binding 초기화
  WidgetsFlutterBinding.ensureInitialized();
  // .env 초기화
  await dotenv.load(fileName: ".env");
  // Get Storage 초기화
  await GetStorage.init();
  // Timeago 언어 초기화
  timeago.setLocaleMessages('ko', timeago.KoMessages());
  // 가로모드 방지
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(411.4, 852.6),
        child: GetMaterialApp(
          title: dotenv.env["APP_EN_NAME"] as String,
          initialRoute: "/splash",
          initialBinding: SplashBinding(),
          getPages: Pages.routes,
          smartManagement: SmartManagement.full,
          home: const SplashUi(),
          builder: (context, child) => MediaQuery(
            child: child!,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          ),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ko'),
          ],
          debugShowCheckedModeBanner: false,
          theme: theme(),
          darkTheme: darkTheme(context: context),
        ),
      );
}
