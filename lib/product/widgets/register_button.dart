
import 'package:flutter/material.dart';
import 'package:intagram/src/feature/login/register_page.dart';

import '../../constant/sizedbox_constant.dart';
import '../../constant/string_constant.dart';
import 'text_widget.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegisterPage()));
          },
          child: const TextWidget(
            text: TextConstant.register,
            textColor: Colors.blue,
            fontWeight: FontWeight.bold,
            size: 16,
          ),
        )
      ],
    );
  }
}