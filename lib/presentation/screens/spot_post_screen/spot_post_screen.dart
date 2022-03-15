import 'package:flutter/material.dart';
import 'package:wovenlog_layered/presentation/constants/colors.dart';
import 'package:wovenlog_layered/presentation/constants/styles.dart';
import 'package:wovenlog_layered/presentation/screens/spot_post_screen/spot_input_section.dart';

class SpotPostScreen extends StatelessWidget {
  const SpotPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Post the new spot',
          style: TextStyle(
            fontSize: kPrimaryFontSize,
            color: kFontColor,
          ),
        ),
        backgroundColor: kAppBarColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SpotInputSection(),
    );
  }
}
