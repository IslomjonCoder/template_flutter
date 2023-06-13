import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class Entry extends StatelessWidget {
  Entry(
      {Key? key,
      required this.label,
      required this.hint,
      this.isEnabled = true,
      this.isLarge = false,
      this.keyboardType = TextInputType.name})
      : super(key: key);
  String label;
  String hint;
  bool isEnabled;
  bool isLarge;
  TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 15.0,
              letterSpacing: 0.2,
              color: MyColors.neutral900,
            ),
          ),
          SizedBox(height: 8),
          TextField(
            enabled: isEnabled,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            maxLines: isLarge ? 4 : 1,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.2,
                color: MyColors.neutral900),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                letterSpacing: 0.2,
              ),
              filled: true,
              fillColor: isEnabled
                  ? Color(0xFFF1F5F9).withOpacity(.4)
                  : MyColors.neutral300.withOpacity(.4),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: MyColors.neutral300)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: MyColors.neutral300)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: MyColors.neutral500)),
            ),
          )
        ],
      ),
    );
  }
}
