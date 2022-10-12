

import 'package:flutter/material.dart';

import '../../constant/border_constant.dart';
import '../../constant/color_constant.dart';
import '../../constant/padding_constant.dart';
import '../../constant/string_constant.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderConstant.instance.radiusCirCular10,
            gradient: LinearGradient(
                colors: [
                  ColorConstant.instance.purpleColor,
                  ColorConstant.instance.redColor,
                  ColorConstant.instance.yellowColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Padding(
          padding: PaddingConstant.instance.allPad10,
          child: Center(
            child: Text(
              TextConstant.signIn,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ),
    );
  }
}
