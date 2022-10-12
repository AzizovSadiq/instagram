import 'package:flutter/material.dart';
import 'package:intagram/constant/duration_items.dart';

import '../../constant/border_constant.dart';
import '../../constant/color_constant.dart';
import '../../constant/string_constant.dart';

class PassWordTextfield extends StatefulWidget {
  const PassWordTextfield({
    Key? key,this.controller,
  }) : super(key: key);
  final TextEditingController? controller;

  @override
  State<PassWordTextfield> createState() => _PassWordTextfieldState();
}

class _PassWordTextfieldState extends State<PassWordTextfield> {
  final _obscuringCharacterText = '*';

  bool _isSecure = true;

  void _changeLoading (){
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(color: ColorConstant.instance.whiteColor),
        borderRadius: BorderConstant.instance.radiusCirCular10,
      ),
      child: TextField(
        controller: widget.controller ,
        obscureText: _isSecure,
        obscuringCharacter: _obscuringCharacterText,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.visiblePassword,
        autofillHints: const [AutofillHints.password],
        decoration:  InputDecoration(
          border: InputBorder.none,
          hintText: TextConstant.password,
          prefixIcon: const Icon(Icons.key),
          suffixIcon: _changeVisibilityButton(),
        ),
      ),
    );
  }
  IconButton _changeVisibilityButton(){
    return IconButton(
      onPressed: _changeLoading,
      icon: AnimatedCrossFade(
        firstChild: const Icon(Icons.visibility_off_outlined), 
        secondChild: const Icon(Icons.visibility_outlined), 
        crossFadeState: _isSecure 
        ? CrossFadeState.showFirst 
        : CrossFadeState.showSecond, 
        duration: DurationItems.durationNormal()),
    );
  }
}
