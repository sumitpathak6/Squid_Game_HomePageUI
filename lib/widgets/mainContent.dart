import 'package:flutter/material.dart';
import 'package:flutter_web_squid_game/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navbar.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileMainContent(),
      desktop: DekstopMainContent(),
    );
  }
}

Widget MobileMainContent() {
  return Container();
}

Widget DekstopMainContent() {
  return Expanded(
      child: Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(squid_game),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(figures),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Life if like a Game, there are many players. \nIf you don't play with them, they'll play with you",
                            style: TextStyle(fontSize: w! / 70),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.trending_up,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Trending #1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: w! / 70,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 42,
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffe50914),
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Continue Watching',
                    style: TextStyle(letterSpacing: 1.2, fontSize: 19),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavButton('S1'),
                  NavButton('E9'),
                  NavButton('2021'),
                  Image.asset(imdb),
                  NavButton('8.2')
                ],
              )
            ],
          ),
        )),
        Expanded(
            child: Container(
          child: Image.asset(squid),
        ))
      ],
    ),
  ));
}
