import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/material.dart';

class MatchCard extends StatefulWidget {
  const MatchCard({super.key});

  @override
  State<MatchCard> createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,20),
      child: Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.matchCardColor),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Row(children: [
              CircleAvatar(backgroundColor: Colors.yellow, radius: 14),
              SizedBox(
                width: 4,
              ),
              AppTexts.lowCardMatch('Premier League')
            ]),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(12),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [CircleAvatar(radius: 28), AppTexts.titleOfClub('text')],
                ),
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [AppTexts.score('3:0'), AppTexts.lowCardMatch('comming soon')],
                ),
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [CircleAvatar(radius: 28,), AppTexts.titleOfClub('text')],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
