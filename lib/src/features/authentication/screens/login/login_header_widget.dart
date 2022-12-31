import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image(
            image: AssetImage(tWelcomebackImage,),
            height: size.height * 0.3,
          ),
        ),
        SizedBox(height: tFormHeight - 20),
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

