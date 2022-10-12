

import 'package:flutter/material.dart';

import '../../constant/border_constant.dart';
import '../../constant/color_constant.dart';
import '../../constant/string_constant.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({
    Key? key,this.controller
  }) : super(key: key);
  final TextEditingController? controller;

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border:
            Border.all(color: ColorConstant.instance.whiteColor),
        borderRadius: BorderConstant.instance.radiusCirCular10,
      ),
      child:  TextField(
        controller: widget.controller,
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        textInputAction: TextInputAction.next,
        decoration:const InputDecoration(
          border: InputBorder.none,
          hintText: TextConstant.email,
          prefixIcon: Icon(Icons.email),
        ),
      ),
    );
  }
}