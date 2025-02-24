import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selected = -1;
  List<String> imageList = ['asset/Card1.png', 'asset/Card2.png'];
  List<String> iconsImg = [
    'asset/bags.png',
    'asset/watch.png',
    'asset/shoes.png',
    'asset/Jewelry.png',
    'asset/Sports.png',
    'asset/music.png',
    'asset/plant.png',
    'asset/phone.png',
    'asset/furniture.png',
    'asset/cosmetics.png',
    'asset/hobby.png'
  ];
  List<String> iconNames = [
    'Bag',
    'Watch',
    'Shoes',
    'Jewelry',
    'Sports',
    'Music',
    'Plant',
    'Phone',
    'Furniture',
    'Cosmetics',
    'Hobby'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Category',
            style: TextStyle(
              color: Color(0xFF363330),
              fontSize: 16.sp,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ),
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Container(
            width: 386.w,
            height: 160.h,
            child: CarouselSlider.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                        image: AssetImage(imageList[index]), fit: BoxFit.cover),
                    color: Color(0xFFAA14F0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r)),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = index;
                      
                    });
                    
                  },
                  child: Container(
                    width: 118.w,
                    height: 120.h,
                    decoration: ShapeDecoration(
                      color: selected == index? Color(0xFFAA14F0):Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 48,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Container(
                          width: 44.w,
                          height: 44.h,
                          decoration: ShapeDecoration( 
                            color: selected == index?Color(0xFFE4ABFF):Color(0xFFF2F2F2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Image(image: AssetImage(iconsImg[index]),color: selected == index ? Colors.white:Colors.grey,),
                        ),
                        Text(
                          iconNames[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: selected == index? Colors.white : Color(0xFF363330),
                            fontSize: 12.sp,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: iconNames.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: 10.0, // Horizontal spacing between items
                mainAxisSpacing: 10.0, // Vertical spacing between items
                childAspectRatio: 118/120
              ),
            ),
          )
        ],
      ),
    );
  }
}
