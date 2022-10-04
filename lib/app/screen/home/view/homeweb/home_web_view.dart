import 'package:flutter/material.dart';
import 'package:vender_travel_aliga/app/screen/home/view/homeweb/widgets/center_home.dart';
import 'package:vender_travel_aliga/app/screen/home/view/homeweb/widgets/left_side.dart';
import 'package:vender_travel_aliga/app/screen/home/view/homeweb/widgets/right_home.dart';

class HomeWeb extends StatelessWidget {
   const HomeWeb({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: LeftMenu(),
          ),
           Expanded(
            flex: 4,
            child: CenterHome(),
          ),
          Expanded(
            flex: 2,
            child: RightHome(),
          ),
        ],
      ),
    );
  }
}
