

import 'package:flutter/material.dart';
import 'package:vender_travel_aliga/app/screen/home/view/home_mobie.dart/home_mobile_view.dart';
import 'package:vender_travel_aliga/app/screen/home/view/homeweb/home_web_view.dart';

class HomeResponsive extends StatelessWidget {
  const HomeResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 768) {
        return const HomeMobile();
      } else {
        return  HomeWeb();
      }
    });
  }
}


