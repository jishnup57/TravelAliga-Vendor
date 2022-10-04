import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vender_travel_aliga/app/screen/home/view/home_view.dart';
import 'package:vender_travel_aliga/app/screen/home/view_model/home_prov.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (_) => HomeProv()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xfff5faf8)
        ),
        home: const HomeResponsive(),
      ),
    );
  }
}
