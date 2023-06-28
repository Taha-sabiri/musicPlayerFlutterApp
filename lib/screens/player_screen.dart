import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplyer/color.dart';

class PlayerScr extends StatelessWidget {
  final int index;
  const PlayerScr({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Mycolor.bodyTextColor)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.white,
                ),
              ),
            ),
            Text("Music"),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Mycolor.bodyTextColor)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Icon(
                  CupertinoIcons.tv_music_note,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
              end: Alignment(0, -1),
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black,
                const Color.fromARGB(235, 0, 0, 0),
                Color.fromARGB(175, 0, 0, 0)
              ],
            )),
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.color),
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/Drake-Chunky-Knit-Sweater-Hotline-Bling.gif'))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/poori_kolohom.jpg'))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "GodPoori",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontFamily: 'Jakarta',
                    fontSize: 25),
              ),
              Text(
                "Koloohm",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white60,
                    fontFamily: 'Jakarta',
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      CupertinoIcons.cloud_upload,
                      color: Colors.white,
                    ),
                    Icon(
                      CupertinoIcons.heart,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.library_add_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ProgressBar(
                  progress: Duration(seconds: 100),
                  thumbColor: Mycolor.primary,
                  progressBarColor: Mycolor.primary,
                  total: Duration(seconds: 132),
                  baseBarColor: Mycolor.primary.withOpacity(.5),
                  timeLabelTextStyle: TextStyle(color: Mycolor.headerTextColor),
                  onSeek: (duration) {
                    print('User selected a new time: $duration');
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.shuffle,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        color: Mycolor.primary,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.skip_next,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.repeat_rounded,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
