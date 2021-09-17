import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:dine_market/app/controllers/home_controller/home_controler.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends GetView<HomeController> {

  final homeController = Get.put(HomeController());

  final assetsImages = [
    'assets/images/image_card.png',
    'assets/images/image_card.png',
    'assets/images/image_card.png',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: Color(0XFFF6F7FC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: height * 2),
            child: Column(
              children: [
                // top bar
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 7),
                  height: height * 4.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: width * 39,
                        height: height * 2.9,
                        child: Image(image: AssetImage('assets/images/logo.png'),),
                      ),
                      Container(
                        child: Container(
                          height: height * 4.5,
                          width: height * 4.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/user_profile.png')
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 3.2,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 7),
                  child: Column(
                    children: [
                      Container(
                        height: height * 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: width * 11.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: width * 11.5,
                                    width: width * 11.5,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        margin: EdgeInsets.all(width * 1.2),
                                        child: Image(image: AssetImage('assets/images/search.png'),),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: width * 60,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Search',
                                        hintStyle: TextStyle(
                                          color: Color(0XFF212121),
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: width * 3.5
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                    width: width * 11,
                                    height: width * 11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: width * 5,
                                          height: width * 5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/sliders_icon.png')
                                            )
                                          ),
                                        ),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0XFF212121),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                          ),
                                        ),
                                      ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height * 1,),
                      Container(
                        height: height * 2.2,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Wrap(
                              spacing: height * 0.5,
                              children: [
                                Chip(
                                  label: Text('Fresh'),
                                  onDeleted: () {},
                                  deleteIcon: Icon(Icons.close_sharp, size: height * 1.3, color: Colors.white,), 
                                  backgroundColor: Color(0XFF212121),
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: width * 2.8,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                  visualDensity: VisualDensity.compact,
                                  labelPadding: EdgeInsets.only(left: 8, right: 0, top: 0, bottom: 0),
                                ),
                                Chip(
                                  label: Text('Chicken'),
                                  onDeleted: () {},
                                  deleteIcon: Icon(Icons.close_sharp, size: height * 1.3, color: Colors.white,), 
                                  backgroundColor: Color(0XFF212121),
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: width * 2.5,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                  visualDensity: VisualDensity.compact,
                                  labelPadding: EdgeInsets.only(left: 8, right: 0, top: 0, bottom: 0),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 3.8,),
                Container(
                  height: height * 11,
                  child: CarouselSlider.builder(
                    itemCount: assetsImages.length,
                    options: CarouselOptions(
                      height: height * 12.5,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) => homeController.setPositionCard(index),
                      autoPlay: true
                    ),
                    itemBuilder: (context, index, realIndex) {
                      final assetImage = assetsImages[index];
                      final w = width;
                      final h = height;
        
                      return buildCard(assetImage, index, w, h);
                    },
                  ),
                ),
                SizedBox(height: height * 1.2,),
                buildIndicator(height, width),
                SizedBox(height: height * 3.8,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 7),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Categories',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 5
                              ),
                            ),
                        ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: height * 1.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              categorieCard('fruits', 'Fruits', height, width),
                              categorieCard('veggie', 'Veggie', height, width),
                              categorieCard('fish', 'Fish', height, width),
                              categorieCard('meat', 'Meat', height, width),
                              categorieCard('dairy', 'Dairy', height, width),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 2.5,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 7),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recomendation',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: height * 2.5
                            ),
                          ),
                          Text(
                            'See all',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 3.5
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 1.5, bottom: height * 2),
                  height: height * 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: width * 7,),
                      productCardDark(width, height),
                      SizedBox(width: width * 5,),
                      productCardLight(width, height),
                      SizedBox(width: width * 5,),
                      productCardDark(width, height),
                      SizedBox(width: width * 5,),
                      productCardLight(width, height),
                      SizedBox(width: width * 5,),
                      productCardDark(width, height),
                      SizedBox(width: width * 5,),
                      productCardLight(width, height),
                      SizedBox(width: width * 5,),
                      productCardDark(width, height),
                      SizedBox(width: width * 5,),
                      productCardLight(width, height),
                      SizedBox(width: width * 5,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }

  Widget buildCard(String assetImage, int index, w, h) {
    return Container(
    margin: EdgeInsets.symmetric(horizontal: w * 7),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color(0XFF212121)
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Fresh Products',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.berkshireSwash(
                      fontSize: w * 6,
                      color: Colors.white,
                    )
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  child: Text(
                    'Always provide best quality\ningredients',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: w * 2.8,
                      color: Colors.white,
                    )
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage(assetImage),
                fit: BoxFit.cover
              )
            ),
            width: w * 24,
          ),
        ],
      ),
    ),
  );
  }

  Widget buildIndicator(h, w) {
    return GetX<HomeController>(
      builder: (homeController) {
        return AnimatedSmoothIndicator(
          activeIndex: homeController.activePositionCard.value,
          count: assetsImages.length,
          effect: ExpandingDotsEffect(
            dotColor: Color(0XFFC4C4C4),
            activeDotColor: Color(0XFF212121),
            dotHeight: h * 1,
            dotWidth: w * 2,
            spacing: w * 1
          ),
        );
      },
    );
  }

  Widget categorieCard(String image, String title, double h, double width) {
    return 
    Container(
      child: Column(
        children: [
          Container(
            height: width * 12,
            width: width * 12,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0XFFFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Container(
            height: width * 6,
            width: width * 6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/${image}_icon.png'),
                fit: BoxFit.contain
              )
            ),
            ),
          ),
          SizedBox(height: h * 0.6,),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: h * 1.5,
              color: Color(0XFF212121)
            ),
          )
        ],
      ),
    );
  }

  Widget productCardDark(double width, double height) {
    return
    Container(
        width: width * 42,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0XFF212121),
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: height * 2, left: height * 2, top: height * 2),
              height: height * 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/chicken.png')
                )
              ),
            ),
            Container(
              width: width * 42,
              height: height * 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Chicken Leg',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: width * 4.3
                  ),
                ),
              ),
            ),
            Container(
              height: height * 6,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: width * 16,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 8,
                            child: Padding(
                              padding: EdgeInsets.only(top: height * 0.8),
                              child: Text(
                                "\$ ",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: width * 3.5
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            height: height * 8,
                            child: Text(
                              '10',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: width * 6.8
                              ),
                            ),
                          ),
                          Container(
                            height: height * 7.2,
                            child: Padding(
                              padding: EdgeInsets.only(top: height * 0.8),
                              child: Text(
                                ' .50',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: width * 3.5
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.5),
                      width: width * 16,
                      height: height * 4,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Order',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: height * 1.5,
                            color: Colors.white
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0XFF585858),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }

  Widget productCardLight(double width, double height) {
    return
    Container(
        width: width * 42,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: height * 2, left: height * 2, top: height * 2),
              height: height * 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/avocado.png')
                )
              ),
            ),
            Container(
              width: width * 42,
              height: height * 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Avocado',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF212121),
                    fontSize: width * 4.3
                  ),
                ),
              ),
            ),
            Container(
              
              height: height * 6,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: width * 16,
                      child: Row(
                        children: [
                          Container(
                            height: height * 8,
                            child: Padding(
                              padding: EdgeInsets.only(top: height * 0.8),
                              child: Text(
                                "\$ ",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF212121),
                                  fontSize: width * 3.5
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            height: height * 8,
                            child: Text(
                              '10',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF212121),
                                fontSize: width * 6.8
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: height * 0.5),
                            height: height * 7.2,
                            child: Padding(
                              padding: EdgeInsets.only(top: height * 0.8),
                              child: Text(
                                ' .50',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF212121),
                                  fontSize: width * 3.5
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width * 16,
                      height: height * 4,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Order',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: height * 1.5,
                            color: Colors.white
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0XFF212121),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }

}



