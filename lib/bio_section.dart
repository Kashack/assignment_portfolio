import 'package:assignment_portfolio/constants/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants/global_color.dart';

class BioSection extends StatelessWidget {
  final String name;
  final String location;
  final String image;

  const BioSection({
    Key? key,
    required this.name,
    required this.location,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
      if (MediaQuery.of(context).size.width > 700) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: GlobalColor.cardColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: 'Bim', style: TextStyle(color: Colors.grey)),
                          TextSpan(
                              text: 'Graph', style: TextStyle(color: Colors.white))
                        ]),
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: GlobalColor.cardColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Name:', style: TextStyle(color: Colors.grey)),
                              Text(name,
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                color: GlobalColor.cardColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Location:', style: TextStyle(color: Colors.grey)),
                                    Text(location,
                                        style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Expanded(child: Image.asset(Globals.myMap,fit: BoxFit.cover,width: double.infinity,))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: GlobalColor.cardColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.linkedinIn,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: GlobalColor.myLinkIn,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.githubAlt,
                                    color: Colors.white),
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: GlobalColor.myIconCard,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.twitter,
                                    color: Colors.white),
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: GlobalColor.myIconCard,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.instagram,
                                    color: Colors.white),
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: GlobalColor.myIconCard,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        );
      }
      return Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: GlobalColor.cardColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: 'Bim', style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: 'Graph', style: TextStyle(color: Colors.white))
                      ]),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover ,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: GlobalColor.cardColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name:', style: TextStyle(color: Colors.grey)),
                        Text(name,
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: GlobalColor.cardColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Location:', style: TextStyle(color: Colors.grey)),
                        Text(location,
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: GlobalColor.cardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.linkedinIn,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: GlobalColor.myLinkIn,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.githubAlt,
                              color: Colors.white),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: GlobalColor.myIconCard,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.twitter,
                              color: Colors.white),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: GlobalColor.myIconCard,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.instagram,
                              color: Colors.white),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: GlobalColor.myIconCard,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      );

    });
  }
}
