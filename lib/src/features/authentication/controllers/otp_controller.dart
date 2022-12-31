import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'flutter_firebase_authentication/src/repository/authentication_repository/authentication_repository.dart';

import '';
import '../../core/screens/dashboard/widgets/dashboard.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(Dashboard()) : Get.back();
  }
}