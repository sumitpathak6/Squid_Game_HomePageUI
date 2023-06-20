import 'package:flutter/material.dart';
import 'package:flutter_web_squid_game/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DekstopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      children: [
        Icon(Icons.menu),
        NavLogo(),
      ],
    ),
  );
}

Widget DekstopNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Row(
          children: [
            NavButton('Home'),
            NavButton('About'),
            NavButton('Cast'),
            NavButton('Trailer'),
          ],
        ),
        NavLogo(),
      ],
    ),
  );
}

Widget NavLogo() {
  return Container(
    height: 60,
    width: 180,
    child: Image.asset(netflix),
  );
}

Widget NavButton(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: text == 'Home' ? Colors.red : Colors.white, fontSize: 18),
        )),
  );
}
