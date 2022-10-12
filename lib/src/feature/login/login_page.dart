import 'package:flutter/material.dart';
import 'package:intagram/constant/color_constant.dart';
import 'package:intagram/constant/padding_constant.dart';
import 'package:intagram/constant/sizedbox_constant.dart';
import 'package:intagram/constant/string_constant.dart';
import 'package:intagram/core/extention/image_extention.dart';
import 'package:intagram/product/widgets/text_widget.dart';

import '../../../product/widgets/password_textfield_widget.dart';
import '../../../product/widgets/sign_in_button_widget.dart';
import '../../../product/widgets/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.backGroundColorGrey,
      body: SafeArea(
        child: Padding(
          padding: PaddingConstant.instance.horPad20,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Image.asset(
                    ImagePath.instagram.path(),
                  ),
                ),
                MyBoxSize.sizeHeight50,
                EmailTextField(
                  controller: _emailController,
                ),
                MyBoxSize.sizeHeight20,
                PassWordTextfield(
                  controller: _passwordController,
                ),
                MyBoxSize.sizeHeight20,
                const SignInButtonWidget(),
                MyBoxSize.sizeHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextWidget(
                      text: TextConstant.notMember,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.black,
                      size: 16,
                    ),
                    MyBoxSize.sizeWidth10,
                    InkWell(
                      onTap: () {},
                      child: const TextWidget(
                        text: TextConstant.register,
                        textColor: Colors.blue,
                        fontWeight: FontWeight.bold,
                        size: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
