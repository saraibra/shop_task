import 'package:flutter/material.dart';

import '../../core/color_manager.dart';

class AdvertiseWidget extends StatelessWidget {
  const AdvertiseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      child: Stack(
        // alignment: Alignment.bottomRight,
        children: [
          Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text("Ad",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: ColorManager.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Nike",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.black)),
                ),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Text("Free Metcon",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.grey)),
                ),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("3000 Eg",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.black)),
                ),
              ]),
            ),
          ),
          Positioned(
              top: -10,
              right: -5,
              child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Image.asset('assets/images/shoes.png')))
        ],
      ),
    );
  }
}
