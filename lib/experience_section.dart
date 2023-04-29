import 'package:assignment_portfolio/constants/global_color.dart';
import 'package:flutter/material.dart';

import 'reusable_card.dart';

class ExperienceSection extends StatelessWidget {
  final String experienceNo;
  final String projectNo;
  final String clientsNo;

  const ExperienceSection({
    Key? key,
    required this.experienceNo,
    required this.projectNo,
    required this.clientsNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: GlobalColor.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Text(
                  'Bring Your Ideas to Life Through UI Design',
                  style: TextStyle(
                    fontSize: 35  ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 0)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Hire me',
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            Icons.waving_hand,
                            color: Colors.yellow,
                            size: 12,
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              ReusableCard(
                topText: experienceNo,
                bottomText: 'Yours Experience',
                cardColor: GlobalColor.myCyan,
              ),
              ReusableCard(
                topText: projectNo,
                textColor: Colors.black,
                bottomText: 'Handled Project',
                cardColor: GlobalColor.myYellow,
              ),
              ReusableCard(
                topText: clientsNo,
                bottomText: 'Clients',
                cardColor: GlobalColor.myPink,
              ),
            ],
          ),
        )
      ],
    );
  }
}
