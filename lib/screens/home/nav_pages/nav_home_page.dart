import 'package:flutter/material.dart';
import 'package:formation_flutter/screens/home/component/nouveaute_widget.dart';
import 'package:formation_flutter/screens/home/component/trending_widget.dart';

import '../../../models/music_model.dart';


class NavHomePage extends StatelessWidget {
  const NavHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Made for you",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_rounded),
                ),
                // SizedBox(width: 5),
                IconButton(onPressed: () {}, icon: Icon(Icons.replay_rounded)),
                // SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings_rounded),
                ),
              ],
            ),


// 1ERE liste de nouveautés
            Container(
              height: 150,

              child: ListView.builder(
                itemCount: musicList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    ((context, index) =>
                        NouveauteWidget(musicModel: musicList[index])),
              ),
            ),


// 2EME liste de nouveautés
            Container(
              height: 150,

              child: ListView.builder(
                itemCount: trendingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    ((context, index) =>
                        NouveauteWidget(musicModel: trendingList[index])),
              ),
            ),


// Liste des tendances
            Text(
              "Trending now",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ListView.builder(
              itemCount: musicList.length,
              scrollDirection: Axis.vertical,
              shrinkWrap:
                  true, //La ListView s’ajuste à la taille totale de ses enfants
              physics:
                  NeverScrollableScrollPhysics(), //Désactive le scroll de la ListView
              itemBuilder:
                  ((context, index) =>
                      TrendingWidget(musicModel: musicList[index])),
            ),
          ],
        ),
      ),
    );
  }
}

