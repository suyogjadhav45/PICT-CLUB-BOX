import 'package:flutter/material.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding * 0.3,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Image.asset('assets/icons/homeicon.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/icons/user.png'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
