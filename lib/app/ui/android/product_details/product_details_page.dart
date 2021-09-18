import 'package:flutter/material.dart';

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
              
            ],
          ),
        ),
      ),
    );
  }
}