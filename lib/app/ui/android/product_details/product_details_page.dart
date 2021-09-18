import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: Color(0XFFF6F7FC),
      body: SafeArea(
        child: Container(
          height: height * 100,
          child: Column(
            children: [
              Container(
                height: height * 9,
                padding: EdgeInsets.only( left: width * 7, right: width * 7, bottom: height * 4, top: height * 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height * 4.5,
                      width: height * 4.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: IconButton(
                        icon: Container(
                          child: Padding(
                            padding: EdgeInsets.all(height * 0.5),
                            child: Image(image: AssetImage('assets/images/arrow_left_icon.png'),
                        ),
                          )),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    Container(
                      height: height * 4.5,
                      width: height * 4.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: IconButton(
                        icon: Container(
                          child: Padding(
                            padding: EdgeInsets.all(height * 0.4),
                            child: Image(image: AssetImage('assets/images/shopping_cart_icon.png'),
                        ),
                          )),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 8.6,
                padding: EdgeInsets.only(bottom: height * 1.5, left: width * 7, right: width * 7),
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 5),
                  child: cardProdutctSize(width, height),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: width * 7, right: width * 7),
                height: height * 36.5,
                alignment: Alignment.topCenter,
                child: Container(
                  height: height * 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/chicken_size.png')
                    )
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.only(left: width * 7, right: width * 7),
                    child: Column(
                      children: [
                        Container(
                          height: height * 13,
                          padding: EdgeInsets.only(top: height * 3.5, bottom: height * 4.3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Chicken Meat',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 3,
                                  color: Color(0XFF212121)
                                ),
                              ),
                              Container(
                                height: height * 5.2,
                                width: width * 28,
                                decoration: BoxDecoration(
                                  color: Color(0XFFF6F7FC),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: height * 2.8,
                                      height: height * 2.8,
                                      decoration: BoxDecoration(
                                        color: Color(0XFFFFFFFF),
                                        borderRadius: BorderRadius.all(Radius.circular(8))
                                      ),
                                      child: Icon(Icons.remove, size: width * 4,)
                                    ),
                                    Container(child: Text(
                                      '2',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Color(0XFF212121)
                                      ),
                                    )),
                                    Container(
                                      width: height * 2.8,
                                      height: height * 2.8,
                                      decoration: BoxDecoration(
                                        color: Color(0XFF212121),
                                        borderRadius: BorderRadius.all(Radius.circular(8))
                                      ),
                                      child: Icon(Icons.add_rounded, color: Colors.white, size: width * 4,),
                                    ),
                                  ]
                                ),
                              )
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardProdutctSize(width, height) {
    return
    Container(
      height: height * 7.1,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: width * 17,
            child: Transform.rotate(
              angle: 0.8,
              child: Container(
                height: width * 3,
                width: width * 3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(3))
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: height * 0.5),
            width: width * 37,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: height * 1.8,),
              child: Row(
                children: [
                  Container(
                    width: width * 17,
                    child: SizedBox(
                      child: Text(
                        'Size',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: height * 1.6
                        ),
                      ),
                    )
                  ),
                  Container(
                    width: width * 18,
                    height: height * 3,
                    child: Padding(
                      padding: EdgeInsets.only(right:  width * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: height * 3,
                            width: height * 3,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            child: Text(
                              'S',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: height * 1.5,
                                color: Colors.white
                              ),
                            )
                          ),
                          Container(
                            height: height * 3,
                            width: height * 3,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0XFFF6F7FC),
                              borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            child: Text(
                              'L',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: height * 1.5,
                                color: Colors.black
                              ),
                            )
                          ),
                        ],
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