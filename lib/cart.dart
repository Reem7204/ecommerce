import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
  
}


class _CartState extends State<Cart> {
  

  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });}
    void decreseCounter() {
    setState(() {
      counter--;
    });}
  List<String> itemImage = [
    'asset/bag.png',
    'asset/headset.png',
    'asset/cactus.png'
  ];
  List<String> itemName = [
    'Leather Women Bag',
    'Wireless Headphone',
    'Small Cactus'
  ];
  List<String> reviews = ['(715 reviews)', '(379 reviews)', '(451 reviews)'];
  List<String> itemPrice = ['\$135.00', '\$65.00', '\$29.90'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Cart',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF363330),
              fontSize: 16.sp,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ),
        leading: Icon(Icons.arrow_back),
        actions: [
          Stack(children: [
            Icon(
              Icons.shopping_cart_outlined,
            ),
            Positioned(
              right: 2.w,
              top: 2.h,
              child: CircleAvatar(
                radius: 5.r,
                backgroundColor: Colors.red,
              ),
            )
          ])
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,0,20,10),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 150 * itemImage.length.toDouble(),
                width: 386.w,
                child: ListView.builder(
                  itemCount: itemImage.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      
                      key: ValueKey(index),
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(left: 20),
                  child:
                      const Icon(Icons.delete, color: Colors.white, size: 30),
                ),
                direction: DismissDirection.endToStart,

                      child: Container(
                        width: 386.w,
                        height: 200.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
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
                        child: Row(
                          children: [
                            Container(
                              height: 150.h,
                              width: 170.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
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
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Container(
                              height: 81.h,
                              width: 25.w,
                              child: Column(
                                children: [
                                  Container(
                                    width: 25.w,
                                    height: 25.h,
                                    decoration: ShapeDecoration(
                                      shape: OvalBorder(
                                        side: BorderSide(
                                            width: 1.w, color: Color(0xFFEAEBEC)),
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        incrementCounter();
                                      },
                                      child: Center(child: Text('+'))),
                                  ),
                                  Container(
                                    width: 25.w,
                                    height: 25.h,
                                    decoration: ShapeDecoration(
                                      shape: OvalBorder(
                                        side: BorderSide(
                                            width: 1.w, color: Color(0xFFEAEBEC)),
                                      ),
                                    ),
                                    child: Center(child: Text('$counter')),
                                  ),
                                  Container(
                                      width: 25.w,
                                      height: 25.h,
                                      decoration: ShapeDecoration(
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 1.w, color: Color(0xFFEAEBEC)),
                                        ),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          decreseCounter();
                                        },
                                        child: Center(child: Text('-')))),
                                ],
                              ),
                            ),
                            Container(
                              width: 84.w,
                              height: 91.h,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(itemImage[index]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                width: 386.w,
                height: 200.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select Item:',
                          style: TextStyle(
                            color: Color(0xFF9A9998),
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          '3',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF363330),
                            fontSize: 18.sp,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal:',
                          style: TextStyle(
                            color: Color(0xFF9A9998),
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          '\$589.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF363330),
                            fontSize: 18.sp,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount (%20):',
                          style: TextStyle(
                            color: Color(0xFF9A9998),
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          '\$117.80',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF363330),
                            fontSize: 18.sp,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(
                            color: Color(0xFF9A9998),
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          '\$471.20',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFAA14F0),
                            fontSize: 24.sp,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: Container(
                    width: 386.w,
                    height: 48.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFAA14F0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'ADD TO CART',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
