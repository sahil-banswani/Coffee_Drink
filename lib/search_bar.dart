import 'package:coffee_app/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: 50.0,
        width: MediaQuery.of(context).size.width - 30.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: ColorPalette().searchBarfill),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            hintText: 'Find a coffee...',
            contentPadding: EdgeInsets.fromLTRB(10.0, 2.0, 5.0, 12.0),
            hintStyle: GoogleFonts.sourceSansPro(
              color: Color(0xFF525559),
            ),
            border: InputBorder.none,
            fillColor: ColorPalette().searchBarfill,
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                left: 4.0,
                right: 10.0,
              ),
              child: Icon(
                Icons.saved_search_rounded,
                size: 28.0,
                color: Color(0xFF525559),
              ),
            ),
            prefixIconConstraints:
                BoxConstraints(maxHeight: 20.0, maxWidth: 40.0),
            prefixIconColor: Color(0xFF525559),
          ),
          style: GoogleFonts.sourceSans3(color: Color(0xFF525559)),
        ),
      ),
    );
  }
}
