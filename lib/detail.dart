import 'package:ecommerce/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detail extends StatefulWidget {
  final String images;
  final String imagename ;
  final String price;
  final int ratings;
  final String about;
  const Detail({super.key, required this.images, required this.imagename, required this.price, required this.ratings, required this.about});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Product Detail')),
        actions: [Icon(Icons.favorite_border_outlined)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: Container(
                  width: 260.w,
                  height: 260.h,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.images),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.imagename,
                    style: TextStyle(
                      color: Color(0xFF363330),
                      fontSize: 20.sp,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    widget.price,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFAA14F0),
                      fontSize: 24.sp,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Unisex',
                    style: TextStyle(
                      color: Color(0xFF9A9998),
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              RatingBar.builder(
                itemSize: 18.sp,
                initialRating: widget.ratings.toDouble(),
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Text(
                    'Color',
                    style: TextStyle(
                      color: Color(0xFF363330),
                      fontSize: 16.sp,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFAA14F0),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF22A3F6),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF363330),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF9A9998),
                      shape: OvalBorder(),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 34.h,
              ),
              Text(
                'About',
                style: TextStyle(
                  color: Color(0xFF363330),
                  fontSize: 16,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 14),
              Text(
                widget.about,
                style: TextStyle(
                  color: Color(0xFF797979),
                  fontSize: 12,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 1.67,
                  letterSpacing: 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
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
