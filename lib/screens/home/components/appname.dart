import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: <Widget>[
                      Text(
                        'PICT CLUBBOX',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/club.png'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "We provide better.... ",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     alignment: Alignment.center,
          //     margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          //     padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          //     height: 54,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(20),
          //       boxShadow: [
          //         BoxShadow(
          //           offset: Offset(0, 10),
          //           blurRadius: 50,
          //           color: kPrimaryColor.withOpacity(0.23),
          //         ),
          //       ],
          //     ),
          //     // child: Row(
          //     //   children: <Widget>[
          //     //     Expanded(
          //     //       child: TextField(
          //     //         onChanged: (value) {},
          //     //         decoration: InputDecoration(
          //     //           hintText: "Search",
          //     //           hintStyle: TextStyle(
          //     //             color: kPrimaryColor.withOpacity(0.5),
          //     //           ),
          //     //           enabledBorder: InputBorder.none,
          //     //           focusedBorder: InputBorder.none,
          //     //           // surffix isn't working properly  with SVG
          //     //           // thats why we use row
          //     //           // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
          //     //         ),
          //     //       ),
          //     //     ),
          //     //     //SvgPicture.asset("assets/icons/search.svg"),
          //     //   ],
          //     // ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
