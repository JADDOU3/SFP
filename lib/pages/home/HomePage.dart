

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          searchField(),
        ],
      ),
    );
  }
  AppBar appBar(){
    return AppBar(
      title: Text('BreakFast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,

        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading:
      GestureDetector(
        onTap: (){

        },
        child: Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/icons/Arrow - Left 2.svg',
            height: 20,
            width: 20,
          ),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFF7F8F8),
            borderRadius: BorderRadius.circular(10),

          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (){

          },
          child: Container(
            alignment: Alignment.center,
            width: 37,
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 5,
              width: 5,
            ),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  Container searchField(){
    return Container(
      margin: EdgeInsets.only(top: 40,left: 20,right: 20),
      decoration: BoxDecoration(
          boxShadow:[
            BoxShadow(
                color: Color(0xff1d1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0
            ),
          ]
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(15),
            hintText: 'Search Pancake',
            hintStyle: TextStyle(
              color: Color(0xffdddada),
              fontSize: 14,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child:  SvgPicture.asset('assets/icons/Search.svg'),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Color(0xf000000),
                      indent: 10,
                      endIndent: 10,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child:  SvgPicture.asset('assets/icons/Filter.svg'),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
            )
        ),
      ),
    );
  }
}