import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled20/utils/icons.dart';

import '../../../utils/colors.dart';

class Gender extends StatefulWidget {
  Gender({Key? key, required this.label}) : super(key: key);
  String label;

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  double screenwidth = 0;
  int _selected = 0;
  List names = ['Male', 'Female'];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    screenwidth = width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'label',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 15.0,
              letterSpacing: 0.2,
              color: MyColors.neutral900,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _buildNavigationItems(),
          )
        ],
      ),
    );
  }

  Widget selected({bool select = true, required String name}) {
    return Container(
      height: 48,
      width: screenwidth * 156 / 375,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Container(
              height: 24,
              width: 24,
              padding: EdgeInsets.all(6),
              child: select ? SvgPicture.asset(MyIcons.done) : null,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: select
                      ? Border.all(width: 1, color: MyColors.primary500)
                      : null,
                  color: select
                      ? MyColors.primary500
                      : MyColors.primary500.withOpacity(0.15)),
            ),
            SizedBox(
              width: 10,
            ),
            Text(name)
          ],
        ),
      ),
      decoration: BoxDecoration(
          color:
              select ? MyColors.neutral100.withOpacity(.4) : MyColors.shades0,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: MyColors.neutral300)),
    );
  }

  List<Widget> _buildNavigationItems() {
    return List.generate(2, (index) {
      return GestureDetector(
          onTap: () {
            setState(() {
              _selected = index;
            });
          },
          // child: Container(
          //   height: 40,
          //   width: 40,
          //   padding: EdgeInsets.all(8.0),
          //   child: _selectedIndex == index
          //       ? _selectedItemWidget(index)
          //       : _unselectedItemWidget(index),
          // ),
          child: _selected == index
              ? selected(select: true, name: names[index])
              : selected(select: false, name: names[index]));
    });
  }
}
