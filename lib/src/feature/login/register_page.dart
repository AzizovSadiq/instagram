

import 'package:flutter/material.dart';
import 'package:intagram/constant/color_constant.dart';
import 'package:intagram/constant/padding_constant.dart';
import 'package:intagram/constant/sizedbox_constant.dart';
import 'package:intagram/constant/string_constant.dart';
import 'package:intagram/core/extention/image_extention.dart';
import 'package:intagram/product/widgets/confirm_password_widget.dart';
import 'package:intagram/product/widgets/text_widget.dart';

import '../../../product/widgets/password_textfield_widget.dart';
import '../../../product/widgets/register_button.dart';
import '../../../product/widgets/sign_in_button_widget.dart';
import '../../../product/widgets/sign_up_widget.dart';
import '../../../product/widgets/textfield_widget.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.backGroundColorGrey,
      body: SafeArea(
        child: Padding(
          padding: PaddingConstant.instance.horPad20,
          child: Center(
            child: SingleChildScrollView(
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
                  ConfirmPassWordTextfield(controller: _confirmPasswordController,),
                  MyBoxSize.sizeHeight20,
                  const SignUpButtonWidget(),
                  MyBoxSize.sizeHeight20,
                  RegisterButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


