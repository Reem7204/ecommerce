import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/category.dart';
import 'package:ecommerce/detail.dart';
import 'package:ecommerce/popularproduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imageList = ['asset/Card1.png', 'asset/Card2.png'];
  List<String> itemImage = ['asset/bag.png', 'asset/headset.png','asset/cactus.png'];
  List<String> itemName = ['Leather Women Bag', 'Wireless Headphone','Small Cactus'];
  List<String> reviews = ['(715 reviews)', '(379 reviews)','(451 reviews)'];
  List<String> itemPrice = ['\$135.00', '\$65.00','\$29.90'];
  List<int> pRating = [
    2,5,4,
  ];
  List<String> About = [
    'Maecenas cursus magna vitae convallis congue. Vestibulum dignissim augue odio, congue rutrum magna gravida ac. Sed rhoncus eu arcu a tempus.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ',
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Center(
            child: Text(
              'Home',
              style: TextStyle(
                color: Color(0xFF363330),
                fontSize: 16.sp,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ),
          actions: [Stack(children: [Icon(Icons.search),])],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            //     // space for Sliders
            Container(
              width: 386.w,
              height: 160.h,
              child: CarouselSlider.builder(
                itemCount: imageList.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageList[index]),
                          fit: BoxFit.cover),
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
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      color: Color(0xFF363330),
                      fontSize: 16.sp,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category()));
                      },
                      child: Text(
                        'See more',
                        style: TextStyle(
                          color: Color(0xFF363330),
                          fontSize: 12.sp,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 14.w,
                  ),
                  Container(
                    width: 38.w,
                    height: 34.h,
                    decoration: ShapeDecoration(
                        color: Color(0xFFAA14F0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'All',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 88.w,
                    height: 34.h,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Electronic',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF363330),
                        fontSize: 12.sp,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 72.w,
                    height: 34.h,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Fashion',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF363330),
                        fontSize: 12.sp,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 61.w,
                    height: 34.h,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Shoes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF363330),
                        fontSize: 12.sp,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 82.w,
                    height: 34.h,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Furniture',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF363330),
                        fontSize: 12.sp,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Products',
                    style: TextStyle(
                      color: Color(0xFF363330),
                      fontSize: 16.sp,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Popularproduct()));
                      },
                      child: Text(
                        'See All',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF363330),
                          fontSize: 12.sp,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: double.infinity,
                height: 310.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemImage.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(images: itemImage[index], imagename: itemName[index], price: itemPrice[index], ratings: pRating[index], about: About[index])));
                      },
                      child: Container(
                        width: 185,
                        height: 264,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Container(
                              width: 157.w,
                              height: 131.h,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(itemImage[index]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                            Text(
                              itemName[index],
                              style: TextStyle(
                                color: Color(0xFF363330),
                                fontSize: 14.sp,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  reviews[index],
                                  style: TextStyle(
                                    color: Color(0xFF9A9998),
                                    fontSize: 12.sp,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  itemPrice[index],
                                  style: TextStyle(
                                    color: Color(0xFFAA14F0),
                                    fontSize: 18.sp,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 16.w,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest Products',
                    style: TextStyle(
                      color: Color(0xFF363330),
                      fontSize: 16.sp,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    'See All',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF363330),
                      fontSize: 12.sp,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 500.h,
              child: ListView.builder(
                itemCount: itemImage.length,
                physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return 
                Container(
                  width: 386.w,
                  height: 98.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0A000000),
                        blurRadius: 48,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70.w,
                        height: 70.h,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(itemImage[index]),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                itemName[index],
                                style: TextStyle(
                                  color: Color(0xFF363330),
                                  fontSize: 14.sp,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                reviews[index],
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF9A9998),
                                  fontSize: 12.sp,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                ),
                              ),
                              Icon(Icons.star)
                            ],
                          ),
                          Text(
                            itemPrice[index],
                            style: TextStyle(
                              color: Color(0xFFAA14F0),
                              fontSize: 18.sp,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
                          ),
            )
          ]
          ),
        )
        );
  }
}
