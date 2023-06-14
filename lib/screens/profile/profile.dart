import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled20/screens/profile/widgets/global_button.dart';
import 'package:untitled20/screens/profile/widgets/input.dart';
import 'package:untitled20/screens/profile/widgets/select.dart';

import '../../utils/colors.dart';
import '../../utils/icons.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.shades0,
      appBar: AppBar(
        backgroundColor: MyColors.shades0,
        elevation: 0,
        centerTitle: true,
        leadingWidth: 45,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).maybePop();
          },
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 12),
            child: SvgPicture.asset(
              MyIcons.arrowBack,
            ),
          ),
        ),
        title: Text(
          tr('Profile'),
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 17.0,
              color: MyColors.shades100),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 26),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Image.asset(MyIcons.boy),
                    Positioned(
                        right: 15,
                        top: 15,
                        child: Container(
                          height: 40,
                          padding: EdgeInsets.all(8),
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColors.primary500,
                            border:
                                Border.all(color: MyColors.shades0, width: 2),
                          ),
                          child: SvgPicture.asset(MyIcons.camera),
                        )),
                  ],
                ),
              ),
              Entry(
                label: tr('Name'),
                hint: tr('User name'),
              ),
              Entry(
                label: tr('Email'),
                hint: 'study@email.com',
                keyboardType: TextInputType.emailAddress,
              ),
              Entry(
                label: tr('Date of birth'),
                hint: '11/08/1997',
                keyboardType: TextInputType.datetime,
              ),
              Entry(
                label: tr('Phone Number'),
                hint: '0334 xxxx xxxx',
                keyboardType: TextInputType.phone,
              ),
              Entry(
                label: tr('Student ID'),
                isEnabled: false,
                hint: '#87654',
              ),
              Gender(label: tr('Gender')),
              Entry(
                label: tr('Address'),
                hint: tr('1106 Sunrise Road Las Vegas, NV 89102'),
                isLarge: true,
              ),
              GlobalButton(
                label: tr("Update Profile"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
