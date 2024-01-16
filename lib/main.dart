import 'package:flutter/material.dart';
import 'package:rohan_digital_marketer/responsive/desktop_body.dart';
import 'package:rohan_digital_marketer/responsive/mobile_body.dart';
import 'package:rohan_digital_marketer/responsive/responsive_layout.dart';
import 'package:rohan_digital_marketer/responsive/tablet_body.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(),
      ),
    );
  }
}

