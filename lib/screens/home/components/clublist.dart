import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF0A0E21),
        ),
        child: Row(
          children: <Widget>[
            Column(
              children: [
                RecomendPlantCard(
                  image: "assets/images/ieeelogo.png",
                  title: "PICT IEEE Student Branch             ",
                  country: "PISB",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendPlantCard(
                  //image: Image.asset('assets/images/pisblogo.jpg'),
                  // image:Image(
                  //   height:20.0,
                  //   image: 'assets/images/pisblogo.jpg',),
                  image: "assets/images/csilogo.png",
                  title: "PICT CSI Student Branch              ",
                  country: "PCSB",
                  //price: 440,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendPlantCard(
                  image: "assets/images/acmlogo.png",
                  title: "PICT ACM Student Chapter          ",
                  country: "PASC",
                  // price: 440,
                  press: () {},
                ),
                RecomendPlantCard(
                  image: "assets/images/pisclogo.png",
                  title: "PICT IET Student Chapter             ",
                  country: "PISC",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendPlantCard(
                  image: "assets/images/inclogo.png",
                  title: "Impetus and Concepts                  ",
                  country: "InC",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendPlantCard(
                  image: "assets/images/munlogo.png",
                  title: "PICT MUN CLUB                                    ",
                  country: "PICT MUN",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendPlantCard(
                  image: "assets/images/roboconlogo.png",
                  title: "PICT ROBOCON CLUB                          ",
                  country: "PICT ROBOCON",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendPlantCard(
                  image: "assets/images/pictoreallogo.png",
                  title: "PICT PICTOREAL CLUB                        ",
                  country: "PICT PICTOREAL",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendPlantCard(
                  image: "assets/images/tedxlogo.png",
                  title: "PICT TEDX CLUB                                   ",
                  country: "TEDX PICT",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
            // RecomendPlantCard(
            //   //image: Image.asset('assets/images/pisblogo.jpg'),
            //   // image:Image(
            //   //   height:20.0,
            //   //   image: 'assets/images/pisblogo.jpg',),
            //   image: "assets/images/pisblogo.jpg",
            //   title: "PCSB",
            //   country: "club2",
            //   //price: 440,
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => DetailsScreen(),
            //       ),
            //     );
            //   },
            // ),
            // RecomendPlantCard(
            //   image: "assets/images/image_3.png",
            //   title: "PASC",
            //   country: "club3",
            //   // price: 440,
            //   press: () {},
            // ),
          ],
        ),
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    //this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  //final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.lightBlueAccent),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.orangeAccent,
      ),
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 1.0,
      ),
      width: size.width * 0.9,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage(image),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Spacer(),
                  // Text(
                  //   '\$$price',
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .button
                  //       .copyWith(color: kPrimaryColor),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
