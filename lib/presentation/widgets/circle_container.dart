import 'package:flutter/material.dart';

import '../../core/color_manager.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({Key? key, required this.image, required this.text}) : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 55,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(image),
          ),
          SizedBox(height: 4,),
          Text(text,
          maxLines: 3,
            style: TextStyle(
                              color: ColorManager.grey,
                              fontSize: 10),
          )
        ],
      ),
    );
  }
}
