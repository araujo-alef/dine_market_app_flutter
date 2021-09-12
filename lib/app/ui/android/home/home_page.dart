import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: Color(0XFFF6F7FC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 30, right: 30),
          child: Column(
            children: [
              // top bar
              Container(
                height: height * 4.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 39,
                      height: height * 2.9,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                        )
                      ),
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
              SizedBox(height: height * 5,),
              Container(
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
                            spacing: 6,
                            children: [
                              Chip(
                                label: Text('Fresh'),
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
              )
            ],
          ),
        ),
      )
    );
  }
}