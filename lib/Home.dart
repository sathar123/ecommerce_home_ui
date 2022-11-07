

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: CustomScrollView(
       shrinkWrap: true,
     slivers: [
       SliverAppBar(
         pinned: true,
         backgroundColor: Colors.white,
        title: Container(height: 6.h,
          child: TextField(

            decoration: InputDecoration(
            fillColor: Colors.grey.withOpacity(0.1),
              filled: true,
              enabled: false,
              hintText: 'Search product',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(15)
              )

            ),
          ),
        ),
         actions: [
           Row(children: [
             CircleAvatar(
               backgroundColor: Colors.grey.withOpacity(0.1),
               child: Icon(Icons.shopping_cart_outlined,color: Colors.black,),
             ),
             SizedBox(
               width: 2.w,
             ),
             Stack(
               alignment: AlignmentDirectional.topEnd,
               children: [
                 CircleAvatar(
                   backgroundColor: Colors.grey.withOpacity(0.1),
                   child: Icon(Icons.notifications_outlined,color: Colors.black,),
                 ),
                 CircleAvatar(
                   radius: 8,
                   backgroundColor: Colors.red,
                   child: Text('3',style: TextStyle(fontSize: 10.sp,color: Colors.white),),
                 )

               ],
             ),

           ],),

           SizedBox(width: 2.w,)
         ],
       ),

       SliverList(

           delegate: SliverChildListDelegate([
         Padding(
           padding:  EdgeInsets.all(3.h),
           child: Container(
             height: 15.h,
            width: 80.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://w0.peakpx.com/wallpaper/570/990/HD-wallpaper-purple-shades-flower-petals-background-purple-aesthetic.jpg',)

              )
            ),
             child: Padding(
               padding:  EdgeInsets.only(left: 3.0.h),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                   Padding(
                     padding:  EdgeInsets.only(top: 5.h),
                     child: Text('A Summer Surpise',style: TextStyle(color: Colors.white),),
                   ),
                   SizedBox(height: 1.h,),
                   Text('Cashback 20%',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),)
                 ],
               ),
             ),
           ),
         ),

         ///
         Padding(
           padding:  EdgeInsets.only(left: 2.h,right: 2.h),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
             MyButton(iconData: Icons.flash_on_outlined,btname: 'Flash Deal',
             ),
             MyButton(iconData: Icons.storefront_sharp,btname: 'Bill',
             ),
             MyButton(iconData: Icons.gamepad_outlined,btname: 'Game',
             ),
             MyButton(iconData: Icons.card_giftcard_outlined,btname: 'Daily Gift',
             ),
             MyButton(iconData: Icons.navigation_outlined,btname: 'More',
             ),


           ],),
         ),

             ///

             Padding(
               padding:  EdgeInsets.all(4.h),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

                 children: [
                 Text('Special for you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 Text('See More',style: TextStyle(color: Colors.grey),),
               ],),
             ),

            Padding(
              padding:  EdgeInsets.only(left: 2.h),
              child: Container(
                width: 80.w,
                height: 20.h,
                child: ListView(

                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(1.h),
                      child: Container(
                        width: 70.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/best-smartphones-2022-1646858128.jpg')
                            )
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(2.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Smartphone',style: TextStyle(color: Colors.white,fontSize: 30.sp,fontWeight: FontWeight.bold),),

                              Text('18 Brands',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.sp))
                            ],),
                        ),
                      ),
                    ),


                    Padding(
                      padding:  EdgeInsets.all(1.h),
                      child: Container(
                        width: 70.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage('https://s3.envato.com/files/9b00ad62-2d79-480e-b90c-390a5aa79305/inline_image_preview.jpg')
                            )
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(2.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Fashion',style: TextStyle(color: Colors.white,fontSize: 30.sp,fontWeight: FontWeight.bold),),
                              Text('24 Brands',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.sp))
                            ],),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),



             Padding(
               padding:  EdgeInsets.all(4.h),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

                 children: [
                   Text('Popular Product',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   Text('See More',style: TextStyle(color: Colors.grey),),
                 ],),
             ),
        
          Container(
            height: 20.h,
            width: 80.w,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h,right: 2.h),
                  child: Container(
                    height: 20.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage('https://www.pngall.com/wp-content/uploads/2/Wireless-Game-Controller-PNG-Clipart.png')
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(.2)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h,right: 2.h),
                  child: Container(
                    height: 20.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage('https://cdn.shopify.com/s/files/1/0257/4601/4261/products/FB-292-NIVIA-SHINING-STAR-FOOTBALL-1_480x_03f0291f-7ff0-486e-9201-0acc91b69813_480x480.webp?v=1650801296')
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(.2)
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 2.h,right: 2.h),
                  child: Container(
                    height: 20.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/009/377/766/small/3d-book-icon-with-transparent-background-free-png.png')
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(.2)
                    ),
                  ),
                )
              ],
            ),
          )
             
        
        


       ]))


     ],

     ),
      bottomNavigationBar: ClipRRect(
     borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0), ),
    child: BottomNavigationBar(
      currentIndex: 0,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.storefront_sharp,),label: '.',backgroundColor: Colors.white),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.comment),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined),label: ''),
      ],

      ),
      )
    );
  }
}

class MyButton  extends StatelessWidget {
final IconData iconData;
final String btname;
MyButton({required this.iconData,required this.btname});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            color: Color(0xFFF5CFBA),
            borderRadius: BorderRadius.circular(10)),
        height: 6.h,
        width: 6.h,

        child: Center(child: Icon(iconData,color: Colors.orange,),),
      ),
     SizedBox(height: 1.h,),
     SizedBox(width: 5.h,
     height: 5.h,
     child: Text(btname,style: TextStyle(fontSize: 15),maxLines: 2,textAlign: TextAlign.center,),
     ),

    ],);
  }
}
