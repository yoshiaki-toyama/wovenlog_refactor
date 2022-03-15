import 'package:flutter/material.dart';
import 'package:wovenlog_layered/presentation/constants/colors.dart';
import 'package:wovenlog_layered/presentation/constants/styles.dart';

class InputForm extends StatelessWidget {
  final FormFieldSetter<String> onSaved;
  final String labelText;

  const InputForm({
    Key? key,
    required this.onSaved,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: labelText,
        hintStyle: const TextStyle(
          color: kFontColor,
          fontSize: kSecondaryFontSize,
        ),
      ),
    );
  }
}
