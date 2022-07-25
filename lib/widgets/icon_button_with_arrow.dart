import 'package:alt_ed_app/constant/constants.dart';
import 'package:flutter/material.dart';

class IconButtonWithArrow extends StatelessWidget {
  const IconButtonWithArrow(
      {Key? key, required this.function, required this.color})
      : super(key: key);

  final Function function;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: color,
      padding: EdgeInsets.zero,
      onPressed: () {
        function.call();
      },
      icon: Stack(
        children: const [
          Icon(
            Icons.circle_outlined,
            size: 24,
          ),
          Positioned(
            top: 4,
            left: 4,
            child: Icon(
              Icons.arrow_back_sharp,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
