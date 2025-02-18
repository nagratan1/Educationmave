import 'package:flutter/material.dart';

class AppColor {
  static Color mainColour = const Color(0xffffffff);
  static Color white = const Color(0xffffffff);
  static Color green = Colors.green;
  static Color grey = const Color(0xff616161);
  static Color myColor = Colors.red.shade400;
  static Color myColorLite = myColor;
  static Color splashColor = myColor;
  static Color black = Colors.black;
  static Color product= Color.fromARGB(255, 143, 137, 137);
 static Color dashbord=const Color(0xff272264);
 static Color Allcolor=Color(0xffB58B43);
  //color for pages
  static Color secondaryColour = const Color(0xffd2b14e);
  static Color secondaryColour_700 = const Color(0xffd2b14e);
  static Color secondaryColour_500 = const Color(0xffdad75f);
  static Color secondaryColour_50 = const Color(0xfff9fae9);
  static Color editTextViewColour = const Color(0xfff1f1f1);
  static Color transparent = const Color(0x73050505);
  static Color drawerBackgroundColour = const Color(0xEC050505);

  //color for pages
  static Color progressBarColour = const Color(0xffffffff);

  //color for pages
  static Color textColour = Colors.black.withOpacity(0.8);

  //color for text
  static Color textFieldColour = const Color(0xcdefe5f6);
  static Color mainScreenCard = const Color(0xFF050505);

  //color for pages
  static Color backgroundColor = const Color(0xfff1f1f1);
  static Color secondaryBackgroundColor = const Color(0xfff0f5f9);
  static Color liteGray = const Color(0xfff2f2f2);

  //color for icon
  static Color iconColor = myColor;

  //divider color
  static Color dividerColor = const Color(0xFFC0C1C3);

  //text color
  static Color txtColour = const Color(0xFF3C3D3D);
  static Color greyColor = const Color(0xFF3C3D3D);
  static Color txtWhite = Colors.white;

  //unselected color
  static Color buttonColour1 = const Color(0xfff22f13);
  static LinearGradient gradiant = LinearGradient(
    colors: [AppColor.secondaryColour, const Color(0xff2e2e2e)],
    stops: const [0, 1],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  static LinearGradient buttonGradiant = LinearGradient(
    colors: [const Color(0x91ffffff), AppColor.secondaryColour],
    stops: const [0.15, 0.85],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  static LinearGradient mainGradiant = LinearGradient(
    colors: [const Color(0xFF343232), AppColor.secondaryColour],
    stops: const [0.15, 0.85],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  static LinearGradient backgroundGradiant = const LinearGradient(
    colors: [Color(0xff181c21), Color(0xff58626a)],
    stops: [0.25, 0.75],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient gradiantMain = const LinearGradient(
    colors: [
      Colors.white,
      Colors.white,
    ],
  );

  static BoxShadow conBoxShadow = const BoxShadow(
    color: Colors.black12,
    blurRadius: 5.0,
    offset: Offset(0, 2),
  );
  static Color cardBackground = const Color(0xFFFFFFFF);
  static Color cornerColor = const Color(0xfff6f6f6);
  static Color productprice = Colors.green;
}
