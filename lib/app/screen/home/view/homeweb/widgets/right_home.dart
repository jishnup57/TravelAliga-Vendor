import 'package:flutter/material.dart';

class RightHome extends StatelessWidget {
  RightHome({
    Key? key,
  }) : super(key: key);

  final ScrollController ctrl3 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: FractionallySizedBox(
            heightFactor: .90,
            widthFactor: .95,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade400,width: 0.5),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
            controller: ctrl3,
            itemBuilder: (context, index) => Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: 15,
          ),
        ),
      ],
    );
  }
}
