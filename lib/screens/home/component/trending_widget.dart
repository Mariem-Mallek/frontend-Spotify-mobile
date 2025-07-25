import '/models/music_model.dart';
import 'package:flutter/material.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({super.key, required this.musicModel});
  final MusicModel musicModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 500,
      child: Column(
        children: [
          Expanded(child: Image.asset(musicModel.photo, fit: BoxFit.cover)),
          SizedBox(height: 10),
          Text(
            musicModel.artist,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(musicModel.title, style: Theme.of(context).textTheme.titleLarge),
        ],
      ),
    );
  }
}