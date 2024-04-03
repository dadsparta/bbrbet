import 'package:bbrbet/app/pages/main/controllers/main_controller.dart';
import 'package:bbrbet/app/widgets/match_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        children: [
          SearchBar(
            controller: null,
            padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0)),
            onTap: () {
            },
            onChanged: (_) {
            },
            leading: const Icon(Icons.search),
            trailing: <Widget>[
              Tooltip(
                message: 'Change brightness mode',
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_voice_outlined),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MatchCard(),
          MatchCard(),
          MatchCard(),
          MatchCard(),
          MatchCard(),
          MatchCard(),
          MatchCard(),
          MatchCard()
        ],
      ),
    );
  }
}
