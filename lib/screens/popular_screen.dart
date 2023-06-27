import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplyer/color.dart';
import 'package:musicplyer/screens/modal/albumlist.dart';
import 'package:musicplyer/screens/modal/musiclist.dart';

class popularScreen extends StatelessWidget {
  final int state;
  popularScreen({
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            child: Stack(children: [
              Container(
                height: 300,
                foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                  end: Alignment(0, -1),
                  begin: Alignment.bottomCenter,
                  colors: [
                    Mycolor.scafoldBg,
                    const Color.fromARGB(185, 8, 2, 9),
                    Color.fromARGB(28, 0, 0, 0),
                  ],
                )),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/Drake-Chunky-Knit-Sweater-Hotline-Bling.gif'))),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      albumlist[state].nameAl + " Playlist",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Jakarta',
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Created by Josh Lamar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Jakarta',
                          fontWeight: FontWeight.w100),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                albumlist[state].numberli,
                                style: TextStyle(
                                    fontFamily: 'Jakarta',
                                    fontSize: 15,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.heart,
                                color: Colors.white,
                              ),
                              Text(
                                albumlist[state].numberli,
                                style: TextStyle(
                                    fontFamily: 'Jakarta',
                                    fontSize: 15,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        "List Tracks",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Jakarta'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.heart,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(90)),
                        child: IconButton(
                          icon: Icon(Icons.play_arrow),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 600,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                  itemCount: musiclist.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                          height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            musiclist[index].cover))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 150, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      musiclist[index].namemusic,
                                      style: TextStyle(
                                          fontFamily: 'Jakarta',
                                          color: Mycolor.headerTextColor,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      musiclist[index].singer,
                                      style: TextStyle(
                                          fontFamily: 'Jakarta',
                                          color: Mycolor.bodyTextColor,
                                          fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.play_arrow,
                                          color: Colors.white70,
                                          size: 20,
                                        ),
                                        Text(
                                          "563k - 2:31",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration()),
                    );
                  }),
            ),
          )
        ]),
      ),
    );
  }
}
