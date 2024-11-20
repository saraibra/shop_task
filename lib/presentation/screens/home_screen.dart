import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:shop_task/core/color_manager.dart';
import 'package:shop_task/presentation/widgets/circle_container.dart';

import '../widgets/advertise_widget.dart';
import '../widgets/item_card.dart';
import '../widgets/search_edittext.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TextEditingController controller = TextEditingController();
  List<String> images = [
    'assets/images/imagee3.png',
    'assets/images/imagee5.png',
    'assets/images/imagee1.png',
    'assets/images/imagee2.png',
    'assets/images/imagee4.png',
  ];
  List<String> imagesPaths = [
    'assets/images/item1.png',
    'assets/images/item2.png',
    'assets/images/item3.png',
    'assets/images/item4.png',
    'assets/images/item5.png',
    'assets/images/item6.png',
  ];
  List<String> texts = [
    'Mobiles',
    'Property for sale',
    'Vechiles',
    'MotorCars',
    'Jobs'
  ];
  List<String> textsItems = [
    'Macbook 14',
    'Iphone 14 Pro Max',
    'Iphone 12 Pro Max',
    'Macbook Pro',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        
        title: Image.asset('assets/images/logo.png'),
        actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
              color: Colors.white,
              elevation: 1,
              child: IconButton(
                  icon: Image.asset('assets/images/notification.png'),
                  onPressed: () {}),
                     ),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              elevation: 1,
              child: IconButton(
                  icon: Image.asset('assets/images/Search.png'),
                  onPressed: () {}),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          SearchEdittext(
            controller: controller,
            type: TextInputType.text,
            isPassword: false,
            suffixIcon: Image.asset('assets/images/back.png'),
            labelText: 'Alexandria,Egypt',
          ),
          Row(
            children: [
              Text('Browse Categories',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.darkBlue)),
              Text('15+'),
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'See more',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: ColorManager.grey,
                        fontSize: 12),
                  ))
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CircleContainer(
                      image: images[index],
                      text: texts[index],
                    ),
                separatorBuilder: (context, index) => SizedBox(width: 12),
                itemCount: images.length),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Featured',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.darkBlue)),
                      Text('10+'),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See more',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ColorManager.grey,
                                fontSize: 12),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      ItemCard(
                          image: imagesPaths[0],
                          title: textsItems[0],
                          date: '22 Sep 2024',
                          status: 'New',
                          price: '30 000 EG',
                          degree: '10/10'),
                      ItemCard(
                          image: imagesPaths[1],
                          title: textsItems[1],
                          date: '22 Sep 2024',
                          status: 'New',
                          price: '30 000 EG',
                          degree: '8/10'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Mobile',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.darkBlue)),
                      Text('100+'),
                      Spacer(),
                      TextButton(
                        
                          onPressed: () {},
                          child: Text(
                            'See more',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ColorManager.grey,
                                fontSize: 12),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      ItemCard(
                          image: imagesPaths[2],
                          title: textsItems[1],
                          date: '22 Sep 2024',
                          status: 'New',
                          price: '30 000 EG',
                          degree: '10/10'),
                      ItemCard(
                          image: imagesPaths[3],
                          title: textsItems[2],
                          date: '22 Sep 2024',
                          status: 'New',
                          price: '30 000 EG',
                          degree: '8/10'),
                    ],
                  ),
                  AdvertiseWidget(),
                  Row(
                    children: [
                      Text('Most Viewed',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.black)),
                      Text('100+'),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See more',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ColorManager.grey,
                                fontSize: 12),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      ItemCard(
                          image: imagesPaths[4],
                          title: textsItems[2],
                          date: '22 Sep 2024',
                          status: 'New',
                          price: '30 000 EG',
                          degree: '10/10'),
                      ItemCard(
                          image: imagesPaths[5],
                          title: textsItems[3],
                          date: '22 Sep 2024',
                          status: 'New',
                          price: '30 000 EG',
                          degree: '8/10'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ), //destination screen
      floatingActionButton: FloatingActionButton(
        child: Image.asset('assets/images/button.png'),
        onPressed: () {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
       gapLocation: GapLocation.center,
        activeIndex: 0,
        activeColor: Colors.blue,
        inactiveColor:Colors.grey ,
        onTap: (int) {}, icons: [Icons.home,Icons.chat_bubble_outline,Icons.favorite_border,Icons.account_circle_outlined],
      ),
    );
  }
}
