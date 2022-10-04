
import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return FractionallySizedBox(
      widthFactor: 0.85,
      heightFactor: .95,
      child: Container(
        color: Colors.green,
        child: Column(
          children: [
            Container(
              height: h * .1,
              color: Colors.blue,
            ),
            Container(
              height: h * .08,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:   [
                  const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                
                  const Text(
                    "Homepage",
                    style: TextStyle(color: Colors.white),
                  ),
                  Visibility(
                    visible: w>=845,
                    child: 
                    SizedBox(
                    width: w * .01,
                  ),
                  )
                ],
              ),
            ),
            Container(
              height: h * .1,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
