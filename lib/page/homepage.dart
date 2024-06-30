import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_movie_clbk/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundColor,
          body: Column(
            children: [
              Container(
                width:  MediaQuery.of(context).size.width,
                height: 364,
                padding: const EdgeInsets.all(16.0),
                color: primaryColor,
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("asset/images/reward.svg", width: 24, height: 24),
                        const SizedBox(width: 12),
                        Container(
                          width: 276,
                          height: 43,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: lilacColor,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Row(
                              children: [
                                SvgPicture.asset("asset/images/search.svg", width: 24, height: 24),
                                const SizedBox(width: 12),
                                Text("Search \"Your Payments\"", style: fieldTextStyle.copyWith(color: Colors.white, fontSize: 12)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        SvgPicture.asset("asset/images/notification.svg", width: 24, height: 24),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 24),
                      child: const Column(
                        children: [

                        ],
                      ),
                    )
                  ],
                )
              )
            ],
          )
      
      ),
    );
  }
}
