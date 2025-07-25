
import '/models/music_model.dart';
import '/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key, required this.musicModel});
  final MusicModel musicModel;

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset("assets/images/logo-spotify.svg", height: 30),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: widget.musicModel.id,
                  child: Image.asset(
                    widget.musicModel.photo,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  widget.musicModel.artist,
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                Text(
                  widget.musicModel.title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.heart),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.download_circle),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.ellipsis_vertical),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.add_circled,
                        color: TColors.primary,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.play_rectangle,
                        color: TColors.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ReadMoreText(
                  widget.musicModel.description,
                  trimMode: TrimMode.Line,
                  trimLines: 4,

                  style: Theme.of(context).textTheme.bodyMedium,
                  colorClickableText: TColors.primary,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
