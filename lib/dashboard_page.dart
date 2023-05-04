import 'package:coffee_app/models/coffee_items.dart';
import 'package:coffee_app/screens/item_deatil.dart';
import 'package:coffee_app/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './color_palette.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<String> coffeTypes = [
    'Cuppuccino',
    'Espresso',
    'Latte',
    'Flat White',
    'Cookie Frappe    '
  ];

  int counter = -1;
  String selectedItem = 'Cuppucino';

  final List<CoffeeItems> coffeeList = [
    CoffeeItems(
        rating: 4.5,
        itemImg: 'images/coffeemain.jpg',
        price: '4.21',
        subtitle: 'With Oats Milk',
        title: 'Cappuccino'),
    CoffeeItems(
        rating: 4.2,
        itemImg: 'images/coffeemain.jpg',
        price: '3.61',
        subtitle: 'Very Strong',
        title: 'Expreeso'),
    CoffeeItems(
        rating: 4.4,
        itemImg: 'images/secondary.jpg',
        price: '3.90',
        subtitle: 'With Chocolate',
        title: 'Cookie Frappe'),
    CoffeeItems(
        rating: 4.4,
        itemImg: 'images/images.jpg',
        price: '3.90',
        subtitle: 'With Chocolate',
        title: 'Cookie Frappe'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomBar(),
      backgroundColor: ColorPalette().scaffoldBg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 25, 15, 5),
              child: Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        //todo
                      },
                      child: Container(
                        padding: EdgeInsets.all(7.0),
                        height: 42.0,
                        width: 42.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF1F242C),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Icon(
                          Icons.grid_view_rounded,
                          size: 28.0,
                          color: Color(0xFF4D4F52),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //todo
                      },
                      child: Container(
                        padding: EdgeInsets.all(7.0),
                        height: 42.0,
                        width: 42.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/model.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0, top: 15.0),
              width: MediaQuery.of(context).size.width - 20,
              child: Text(
                'Find the best coffee for you.. ',
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.w700,
                  fontSize: 38.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SearchBar(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment(0.7, -1.0),
                    end: Alignment(1.0, -1.0),
                    colors: <Color>[Colors.black, Colors.transparent],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstATop,
                child: Container(
                  color: Color(0xFF0D0F14),
                  width: MediaQuery.of(context).size.width - 30,
                  height: 50.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...coffeTypes.map(
                        (e) {
                          counter++;
                          if (counter <= 4)
                            return _buildTypes(e, counter);
                          else
                            counter = 0;
                          return _buildTypes(e, counter);
                        },
                      ).toList()
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: (MediaQuery.of(context).size.height / 3) - 50,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                padding: EdgeInsets.only(top: 5.0),
                children: [
                  Container(
                    color: Color(0xFF0D0F14),
                    width: MediaQuery.of(context).size.width - 10,
                    height: 225.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...coffeeList.map((e) {
                          return _buildCoffeeItem(e);
                        }).toList()
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 15.0, right: 15),
              child: Text(
                'Special for you...',
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 10.0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                height: 125,
                width: MediaQuery.of(context).size.width - 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      ColorPalette().gradientTopLeft,
                      Colors.black,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 115,
                      width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage('images/beansbottom.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 115,
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width - 185,
                            child: Text(
                              '5 Coffee Beans You Must Try !',
                              style: GoogleFonts.sourceSansPro(
                                color: Colors.white,
                                fontSize: 23.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTypes(coffee, counter) {
    return Padding(
      padding: counter != 0
          ? EdgeInsets.only(left: 25.0)
          : EdgeInsets.only(left: 7.0),
      child: Container(
        height: 50.0,
        color: Color(0xFF0D0F14),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = coffee;
                });
              },
              child: Text(
                coffee,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: coffee == selectedItem
                        ? ColorPalette().coffeeSelected
                        : ColorPalette().coffeeUnselected),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Container(
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: coffee == selectedItem
                    ? ColorPalette().coffeeSelected
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCoffeeItem(CoffeeItems cItem) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ItemDetails(
                cItem: cItem,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[ColorPalette().gradientTopLeft, Colors.black],
            ),
          ),
          height: 200.0,
          width: 150.0,
          child: Column(
            children: [
              Container(
                height: 140.0,
                width: 150.0,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10.0,
                      left: 10.0,
                      child: Hero(
                        tag: cItem.itemImg.toString(),
                        child: Container(
                          height: 120.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(cItem.itemImg!),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: Container(
                        height: 25.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF342520).withOpacity(0.7),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                        ),
                        child: Center(
                            child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: ColorPalette().coffeeSelected,
                              size: 15.0,
                            ),
                            Text(
                              cItem.rating.toString(),
                              style: GoogleFonts.sourceSansPro(
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        )),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  cItem.title!,
                  style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 3.0, left: 10.0),
                child: Text(
                  cItem.subtitle!,
                  style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40.0,
                      width: 60.0,
                      child: Row(
                        children: [
                          Text(
                            '\$',
                            style: GoogleFonts.sourceSansPro(
                                color: ColorPalette().coffeeSelected,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            cItem.price.toString(),
                            style: GoogleFonts.sourceSansPro(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          color: ColorPalette().coffeeSelected,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(Icons.add, size: 17.0, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      height: 50.0,
      decoration: BoxDecoration(color: Color(0xFF1A1819)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Icon(
              Icons.home_filled,
              color: Color(0xFFD17742),
            ),
          ),
          Icon(
            Icons.shopping_bag_rounded,
            color: Color(0xFFD17742),
          ),
          Icon(
            Icons.favorite,
            color: Color(0xFFD17742),
          ),
          Icon(
            Icons.notification_add,
            color: Color(0xFFD17742),
          ),
        ],
      ),
    );
  }
}
