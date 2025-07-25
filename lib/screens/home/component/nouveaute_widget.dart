
import '/models/music_model.dart';
import '/screens/home/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NouveauteWidget extends StatelessWidget {
  const NouveauteWidget({super.key, required this.musicModel});
  final MusicModel musicModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Detailpage(musicModel: musicModel),
          ),
        );
      },
      child: Container(
        width: 100,

        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Expanded(
              child: Hero(
                tag: musicModel.id,
                child: Image.asset(musicModel.photo, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 5),
            Text(
              musicModel.artist,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              musicModel.title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
