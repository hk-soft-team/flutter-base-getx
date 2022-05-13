import 'dart:async';

import 'package:example/utils/screen_size.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  // * 스토리지 토큰  및 초기화 체크
  Future<void> handleInit() async {
    // 권한(이용) 안내 (전화 + 저장 + 주소록)
    if (GetStorage().read("initialize_permission") == null ||
        GetStorage().read("initialize_permission") == false) {
      // Future.delayed(const Duration(milliseconds: 3000),
      //     () => Get.offAndToNamed("/permission"));
    } else {
      handleGetTo(status: false);
    }
  }

  // * 페이지 이동
  void handleGetTo({required bool status}) => Future.delayed(
      const Duration(milliseconds: 1000),
      () => status == true
          ? Get.offAndToNamed("/main")
          : Get.offAndToNamed("/signin"));

  @override
  // ignore: unnecessary_overrides
  void onInit() async {
    await handleInit();

    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    handleScreenSize();

    super.onReady();
  }

  @override
  // ignore: unnecessary_overrides
  void onClose() {
    super.onClose();
  }

  @override
  // ignore: unnecessary_overrides
  InternalFinalCallback<void> get onStart => super.onStart;

  @override
  // ignore: unnecessary_overrides
  InternalFinalCallback<void> get onDelete => super.onDelete;
}
