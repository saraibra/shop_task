import 'package:flutter/material.dart';

import '../../core/color_manager.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.date,
      required this.status,
      required this.price,
      required this.degree})
      : super(key: key);
  final String image;
  final String title;
  final String price;

  final String date;
  final String status;
  final String degree;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              )
            ],
          ),
          Text(title),
          Text(price,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.black)),
          SizedBox(
              width: 110,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade300,
                        ),
                    child: Center(child: Text(status)),
                  ),
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade300,
                        ),
                    child: Center(child: Text(degree)),
                  )
                ],
              )),
          Text(date)
        ],
      ),
    );
  }
}
