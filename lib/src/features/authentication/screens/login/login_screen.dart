import 'package:flutter/material.dart';
import 'flutter_firebase_authentication/src/common_widgets/form/form_header_widget.dart';
import 'flutter_firebase_authentication/src/constants/image_strings.dart';
import 'flutter_firebase_authentication/src/constants/sizes.dart';
import 'flutter_firebase_authentication/src/constants/text_strings.dart';

import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                FormHeaderWidget(image: tWelcomebackImage, title: tLoginTitle, subTitle: tLoginSubTitle),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

