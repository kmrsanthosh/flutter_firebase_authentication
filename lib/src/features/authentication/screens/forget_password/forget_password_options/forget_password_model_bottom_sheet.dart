import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'flutter_firebase_authentication/src/features/authentication/screens/login/login_phone_number/login_screen_phone_number.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forget_password_mail/forget_password_mail.dart';
import '../forget_password_phone/forget_password_phone.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{
  static void buildShowModalButtonSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => FractionallySizedBox(
        heightFactor: 0.45,
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tForgetPasswordTitle, style: Theme.of(context).textTheme.headline2),
              Text(tForgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyText2,),
              const SizedBox(height: 30,),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mail_outline_rounded,
                title: tEmail,
                subTitle: tResetViaEMail,
                onTap: () {
                  Navigator.pop(context);
                  Get.to (() => ForgetPasswordMailScreen());},
              ),

              const SizedBox(height: 20.0),

              ForgetPasswordBtnWidget(
                btnIcon: Icons.mobile_friendly_rounded,
                title: tPhoneNo,
                subTitle: tResetViaPhone,
                onTap: () {
                  Navigator.pop(context);
                  Get.to (() => ForgetPasswordPhoneScreen());
                },
              ),
            ],
          ),
        ),
      ),);
  }
}

