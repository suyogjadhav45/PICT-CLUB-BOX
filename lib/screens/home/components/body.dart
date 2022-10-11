import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'appname.dart';
import 'clublist.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small dice
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(
              title: "CLUBS IN PICT",
            ),
            RecomendsPlants(),
            // TitleWithMoreBtn(
            //   title: "ONGOING ACTIVITIES",
            // ),
            //FeaturedPlants(),
            SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
