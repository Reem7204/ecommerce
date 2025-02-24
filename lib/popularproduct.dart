import 'package:ecommerce/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Popularproduct extends StatefulWidget {
  const Popularproduct({super.key});

  @override
  State<Popularproduct> createState() => _PopularproductState();
}

class _PopularproductState extends State<Popularproduct> {
  int selected = -1;
  List<String> pItemsImages = [
    'asset/p1.png',
    'asset/p2.png',
    'asset/p3.png',
    'asset/p4.png',
    'asset/p5.png',
    'asset/p6.png'
  ];
  List<String> pItemsName = [
    'Unisex Straw Hat',
    'Design Orange Vase',
    'Women Leather Bag',
    'Retro Desk Clock',
    'Design Ceramic Cup',
    'Wireless Headphone'
  ];
  List<String> pItemsReview = [
    '(271 reviews)',
    '(2184 reviews)',
    '(328 reviews)',
    '(3721 reviews)', '(174 reviews)',
    '(372 reviews)'
  ];
  List<String> pItemPrice = [
    '\$36.00',
    '\$248.00',
    '\$374.00',
    '\$125.00',
    '\$27.50' ,'\$78.90'
  ];
  List<int> pRating = [
    2,5,4,2,1,4
  ];
  List<String> About = [
    'Maecenas cursus magna vitae convallis congue. Vestibulum dignissim augue odio, congue rutrum magna gravida ac. Sed rhoncus eu arcu a tempus.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ',
    'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because',
    'because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except',
    'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will'

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Text(
            'Popular Product',
            style: TextStyle(
              color: Color(0xFF363330),
              fontSize: 16.sp,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ),
        actions: [
          Stack(children: [
            Icon(Icons.shopping_cart_outlined),
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
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10.0, // Horizontal spacing between items
                mainAxisSpacing: 10.0, // Vertical spacing between items
                childAspectRatio: 185 / 200),
            itemCount: pItemsImages.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(images: pItemsImages[index], imagename: pItemsName[index], price: pItemPrice[index], ratings: pRating[index], about: About[index],)));
                },
                child: Container(
                  width: 185,
                  height: 264,
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
                      SizedBox(
                        height: 14.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [GestureDetector(
                          onTap: (){
                            setState(() {
                              selected = index;
                            });
                          },
                          child: Icon(Icons.favorite,color: selected == index? Colors.red : Colors.grey,))],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        width: 157.w,
                        height: 131.h,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(pItemsImages[index]),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        pItemsName[index],
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
                          Icon(Icons.star,color: Colors.amber,),
                          Text(
                            pItemsReview[index],
                            style: TextStyle(
                              color: Color(0xFF9A9998),
                              fontSize: 12.sp,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                      Text(
                        pItemPrice[index],
                        style: TextStyle(
                          color: Color(0xFFAA14F0),
                          fontSize: 18.sp,
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
          ))
        ],
      ),
    );
  }
}
