import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wovenlog_layered/presentation/providers/spot_list_provider.dart';
import 'package:wovenlog_layered/presentation/screens/spot_list_screen/spot_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: SpotListScreen(),
      ),
      providers: [
        ChangeNotifierProvider(
          create: (context) => SpotListProvider(),
        ),
      ],
    );
  }
}
