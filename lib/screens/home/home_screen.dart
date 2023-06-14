import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled20/screens/about/about.dart';
import 'package:untitled20/screens/account/account.dart';
import 'package:untitled20/screens/home/widgets/box.dart';
import 'package:untitled20/screens/home/widgets/settings.dart';
import 'package:untitled20/screens/profile/profile.dart';
import 'package:untitled20/screens/settings/setting.dart';

import '../../utils/colors.dart';
import '../../utils/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 3;

  final List<Widget> _pages = [
    Profile(),
    Profile(),
    Profile(),
    Profile(),
  ];
  final images = [
    MyIcons.menu,
    MyIcons.calendar,
    MyIcons.message,
    MyIcons.profile,
  ];
  final message = SvgPicture.asset(
    MyIcons.message,
  );
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.shades0,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(MyIcons.ring),
                  SizedBox(width: width * (8 / 375)),
                  const Text(
                    "Study",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Divider(),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(4),
                          color: Colors.white,
                          height: 58,
                          width: 58,
                          child: Image.asset(MyIcons.boy)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tr("Welcome"),
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: MyColors.neutral500),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Marvin Mckinney",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: MyColors.shades100),
                          ),
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: () {}, child: SvgPicture.asset(MyIcons.exit)),
                    ],
                  ),
                  Divider(),
                  Column(
                    children: [
                      Settings(
                        title: tr("Profile"),
                        icon: MyIcons.user,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()));
                        },
                      ),
                      Settings(
                        title: tr("Account"),
                        icon: MyIcons.account,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Account(),
                              ));
                        },
                      ),
                      Settings(
                        title: tr("Settings"),
                        icon: MyIcons.settings,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SettingPage(),
                              ));
                        },
                      ),
                      Settings(
                        title: tr("About"),
                        icon: MyIcons.about,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutPage()));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: height * (40 / 812)),
                  Container(
                    height: 85,
                    width: 327,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.secondary500),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 14,
                          left: 25,
                          child: SvgPicture.asset(
                            MyIcons.music,
                          ),
                        ),
                        Positioned(
                            top: height * (20 / 812),
                            left: width * (22 / 375),
                            child: const Ring(height: 7, width: 7)),
                        Positioned(
                            top: height * (13 / 812),
                            left: width * (92 / 375),
                            child: const Ring(height: 4, width: 4)),
                        Positioned(
                            top: height * (69 / 812),
                            left: width * (26 / 375),
                            child: const Ring(height: 3, width: 3)),
                        Positioned(
                            top: height * (73 / 812),
                            left: width * (78 / 375),
                            child: const Ring(height: 3, width: 3)),
                        Positioned(
                            top: height * (4 / 812),
                            left: width * (253 / 375),
                            child: SvgPicture.asset(MyIcons.box1)),
                        Positioned(
                            left: width * (234 / 375),
                            child: SvgPicture.asset(MyIcons.box2)),
                        Positioned(
                            left: width * (214 / 375),
                            child: SvgPicture.asset(MyIcons.box3)),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * (31 / 812),
                              left: width * (106 / 375)),
                          child: Text(
                            tr("How can we help you?"),
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: MyColors.shades0),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height * (63 / 812)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            tr('Privacy Policy'),
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF64748B),
                                fontSize: 13,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(MyIcons.back)
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            tr('Terms'),
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF64748B),
                                fontSize: 13,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            width: width * 8 / 375,
                          ),
                          SvgPicture.asset(MyIcons.back)
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            tr('English'),
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF64748B),
                                fontSize: 13,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            width: width * 8 / 375,
                          ),
                          SvgPicture.asset(MyIcons.bBack)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 56.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _buildNavigationItems(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildNavigationItems() {
    return List.generate(_pages.length, (index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(8.0),
          child: _selectedIndex == index
              ? _selectedItemWidget(index)
              : _unselectedItemWidget(index),
        ),
      );
    });
  }

  Widget _selectedItemWidget(int index) {
    return SvgPicture.asset(
      images[index],
      color: MyColors.secondary700,
    );
  }

  Widget _unselectedItemWidget(int index) {
    return SvgPicture.asset(
      images[index],
      color: MyColors.primary300,
    );
  }
}
