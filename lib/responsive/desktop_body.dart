import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      log("pixels :::: ${scrollController.position.pixels}");
    });
  }

  bool isHomeHovered = false;
  bool isAboutHovered = false;
  bool isServicesHovered = false;
  bool isContactUsHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: defaultBackgroundColor,
      backgroundColor: Colors.black87,

      body: ListView(
        controller: scrollController,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/dm.jpg',
                fit: BoxFit.fill,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 100),
                  SizedBox(width: 150),
                  Center(
                    child: MouseRegion(
                      onEnter: (_) => onHoverHome(true),
                      onExit: (_) => onHoverHome(false),
                      child: GlassmorphicContainer(
                        width: 90,
                        height: 30,
                        borderRadius: 20,
                        blur: 20,
                        alignment: Alignment.center,
                        border: 2,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.1),
                            Color(0xFFFFFFFF).withOpacity(0.05),
                          ],
                          stops: [0.1, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color((0xFFFFFFFF)).withOpacity(0.5),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            scrollController.animateTo(411.1999999999999,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.linear);
                          },
                          child: Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: isHomeHovered ? Colors.blue : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: MouseRegion(
                      onEnter: (_) => onHoverAbout(true),
                      onExit: (_) => onHoverAbout(false),
                      child: GlassmorphicContainer(
                        width: 90,
                        height: 30,
                        borderRadius: 20,
                        blur: 20,
                        alignment: Alignment.center,
                        border: 2,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.1),
                            Color(0xFFFFFFFF).withOpacity(0.05),
                          ],
                          stops: [0.1, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color((0xFFFFFFFF)).withOpacity(0.5),
                          ],
                        ),
                        child: Text(
                          'About',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: isAboutHovered ? Colors.blue : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: MouseRegion(
                      onEnter: (_) => onHoverServices(true),
                      onExit: (_) => onHoverServices(false),
                      child: GlassmorphicContainer(
                        width: 90,
                        height: 30,
                        borderRadius: 20,
                        blur: 20,
                        alignment: Alignment.center,
                        border: 2,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.1),
                            Color(0xFFFFFFFF).withOpacity(0.05),
                          ],
                          stops: [0.1, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color((0xFFFFFFFF)).withOpacity(0.5),
                          ],
                        ),
                        child: Text(
                          'Services',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color:
                                isServicesHovered ? Colors.blue : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: MouseRegion(
                      onEnter: (_) => onHoverContactUs(true),
                      onExit: (_) => onHoverContactUs(false),
                      child: GlassmorphicContainer(
                        width: 90,
                        height: 30,
                        borderRadius: 20,
                        blur: 20,
                        alignment: Alignment.center,
                        border: 2,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.1),
                            Color(0xFFFFFFFF).withOpacity(0.05),
                          ],
                          stops: [0.1, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color((0xFFFFFFFF)).withOpacity(0.5),
                          ],
                        ),
                        child: Text(
                          'Contact us',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color:
                                isContactUsHovered ? Colors.blue : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 400,
                  ),
                  Center(
                      child: Text(
                    'R O H A N Y A D A V',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void onHoverHome(bool hover) {
    setState(() {
      isHomeHovered = hover;
    });
  }

  void onHoverAbout(bool hover) {
    setState(() {
      isAboutHovered = hover;
    });
  }

  void onHoverServices(bool hover) {
    setState(() {
      isServicesHovered = hover;
    });
  }

  void onHoverContactUs(bool hover) {
    setState(() {
      isContactUsHovered = hover;
    });
  }
}
