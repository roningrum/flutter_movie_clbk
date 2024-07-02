import 'package:flutter/material.dart';
import 'package:flutter_movie_clbk/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: SvgPicture.asset("asset/images/home-menu.svg")),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("asset/images/statistic-menu.svg")),
            Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(16.0)
                ),
                child: IconButton(onPressed: (){}, icon: SvgPicture.asset("asset/images/scan-menu.svg", color: Colors.white,))),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("asset/images/chat-menu.svg")),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("asset/images/profile-menu.svg")),
        
          ],
        ),
      ),
    );
  }
}

