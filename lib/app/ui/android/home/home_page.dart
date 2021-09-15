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
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              // top bar
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
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
              ),
              SizedBox(height: height * 5,),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  child: Column(
                    children: [
                      Row(
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
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.2),
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
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Image(image: AssetImage('assets/images/sliders_icon.png')),
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0XFF212121),
                                      ),
                                    ),
                          )
                        ],
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
              ),
              SizedBox(height: height * 4,),
              Container(
                child: CarouselSlider.builder(
                  itemCount: assetsImages.length,
                  options: CarouselOptions(
                    height: height * 11,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) => homeController.setPositionCard(index)
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
              buildIndicator(height, width)
            ],
          ),
        ),
      )
    );
  }

  Widget buildCard(String assetImage, int index, w, h) {
  return Container(
    width: w * 84,
    margin: EdgeInsets.symmetric(horizontal: w * 1),
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
                      fontWeight: FontWeight.w500,
                      fontSize: w * 2.6,
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
          dotHeight: h * 0.9,
          dotWidth: w * 1.8,
          spacing: w * 1
        ),
      );
    },
  );
}

}



