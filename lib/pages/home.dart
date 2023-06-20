import 'package:flutter/material.dart';
import 'package:flutter_web_squid_game/utils/constants.dart';

import '../widgets/mainContent.dart';
import '../widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xffD00070),
                    Color(0xff000000),
                  ]),
              color: Colors.pink,
              image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
          child: Column(
            children: [
              NavBar(),
              SizedBox(
                height: 10,
              ),
              MainContent(),
            ],
          ),
        ),
      ),
    );
  }
}
