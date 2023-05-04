import 'package:coffee_app/color_palette.dart';
import 'package:coffee_app/models/coffee_items.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetails extends StatefulWidget {
  final CoffeeItems cItem;
  const ItemDetails({super.key, required this.cItem});

  @override
  State<ItemDetails> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    int selectedIndex = 0;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.black,
          ),
          Hero(
            tag: widget.cItem.itemImg.toString(),
            child: Container(
              height: (screenHeight / 2) + 90,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                    image: AssetImage(
                      widget.cItem.itemImg.toString(),
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: 45.0,
            left: 15.0,
            right: 15.0,
            child: Container(
              color: Colors.transparent,
              height: 50.0,
              width: screenWidth - 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Color(0xFF14181D),
                          border: Border.all(
                            color: Color(0xFF322B2E),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFF525154),
                        size: 17.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //todo
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Color(0xFF14181D),
                          border: Border.all(
                            color: Color(0xFF322B2E),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(
                        Icons.favorite_rounded,
                        color: Color(0xFF525154),
                        size: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: (screenHeight / 2) - 60,
            child: GlassContainer(
              height: 150,
              width: screenWidth,
              blur: 4,
              border: Border.fromBorderSide(BorderSide.none),
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.black.withOpacity(0.6),
              child: Container(
                height: 140.0,
                width: screenWidth - 20,
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    height: 140.0,
                    width: (screenWidth - 20) / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.cItem.title.toString(),
                          style: GoogleFonts.sourceSansPro(
                              color: Color(0xFFADADAD),
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.cItem.subtitle.toString(),
                          style: GoogleFonts.sourceSansPro(
                              color: Color(0xFFADADAD), fontSize: 17.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: ColorPalette().coffeeSelected,
                              size: 22.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              widget.cItem.rating.toString(),
                              style: GoogleFonts.sourceSansPro(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '(6,986)',
                              style: GoogleFonts.sourceSansPro(
                                  color: Color(0xFFADADAD),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25.0),
                    height: 140.0,
                    width: (screenWidth - 20) / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF0F1419),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.coffee_rounded,
                                    color: ColorPalette().coffeeSelected,
                                    size: 21.0,
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    'Coffee',
                                    style: GoogleFonts.sourceCodePro(
                                      color: Color(0xFF909193),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF0F1419),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.water_drop_rounded,
                                    color: ColorPalette().coffeeSelected,
                                    size: 21.0,
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    'Milk',
                                    style: GoogleFonts.sourceCodePro(
                                      color: Color(0xFF909193),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 35.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF0F1419),
                          ),
                          child: Center(
                            child: Text(
                              'Medium Roasted',
                              style: GoogleFonts.sourceCodePro(
                                  color: Color(0xFF909193),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 2 + 140,
            child: Container(
              height: screenHeight / 2 - 140,
              width: screenWidth,
              child: ListView(
                padding: EdgeInsets.only(left: 15.0),
                children: [
                  Text(
                    'Description',
                    style: GoogleFonts.sourceSansPro(
                      color: Color(0xFF999A98),
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'A capuccino is a coffee-based drink made primarily from espresso and milk',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.white, fontSize: 17.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Size',
                    style: GoogleFonts.sourceSansPro(
                      color: Color(0xFF999A98),
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: screenWidth - 30,
                    child: Row(children: []),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    Widget _buildSizeButton(String title, int index) {
      return AnimatedContainer(
        duration: Duration(seconds: 4),
        curve: Curves.easeIn,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            height: 40.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: index == selectedIndex ? Colors.black : Color(0xFF0D0F14),
              borderRadius: BorderRadius.circular(10.0),
              border: index == selectedIndex
                  ? Border.all(
                      color: ColorPalette().coffeeSelected,
                      style: BorderStyle.solid,
                      width: 1.0)
                  : Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 0.2,
                    ),
            ),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.sourceSansPro(
                    color: index == selectedIndex
                        ? ColorPalette().coffeeSelected
                        : Color(0xFFADADAD),
                    fontSize: 15.0),
              ),
            ),
          ),
        ),
      );
    }
  }
}
