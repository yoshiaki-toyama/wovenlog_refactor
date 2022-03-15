import 'package:flutter/material.dart';
import 'package:wovenlog_layered/presentation/constants/colors.dart';
import 'package:wovenlog_layered/presentation/screens/spot_post_screen/spot_post_screen.dart';
import 'package:wovenlog_layered/presentation/screens/spot_list_screen/spot_list_widget.dart';

class SpotListScreen extends StatelessWidget {
  const SpotListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Spot List',
          style: TextStyle(color: kFontColor),
        ),
        backgroundColor: kAppBarColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: kPrimaryColor),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SpotPostScreen(),
              ),
            ),
          )
        ],
      ),
      body: const SpotListSection(),
    );
  }
}
