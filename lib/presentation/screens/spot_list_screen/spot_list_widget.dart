import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wovenlog_layered/presentation/constants/colors.dart';
import 'package:wovenlog_layered/presentation/providers/spot_list_provider.dart';

class SpotListSection extends StatelessWidget {
  const SpotListSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // spotListをProviderでwatch
    // ListViewは、SpotListProvider.spotListを表示するだけ。変更等はしない。
    final spotList = context.watch<SpotListProvider>().spotList;
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          child: ListTile(
            leading: Image.asset(
              spotList[index].imagePath,
              width: 80,
              fit: BoxFit.fill,
            ),
            title: Text(spotList[index].name),
            subtitle: Text(spotList[index].description),
            onTap: () {},
          ),
        );
      },
      itemCount: spotList.length,
    );
  }
}
