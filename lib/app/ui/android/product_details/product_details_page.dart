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
      /* appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFFF6F7FC),
        leadingWidth: width * 25,
        
        leading: new IconButton(
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Icon(Icons.arrow_back_rounded, color: Color(0XFF212121), size: height * 2, ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Container(
              
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Icon(Icons.arrow_back_rounded, color: Color(0XFF212121), size: height * 2, ),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ), */
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: width * 7, right: width * 7),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: height * 0.5, bottom: height * 3.5),
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
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 5),
                  child: cardProdutctSize(width, height),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cardProdutctSize(width, height) {
    return
    Container(
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
            margin: EdgeInsets.only(bottom: width * 1.5),
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
                    child: Text(
                      'Size',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: height * 1.6
                      ),
                    )
                  ),
                  Container(
                    width: width * 18,
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