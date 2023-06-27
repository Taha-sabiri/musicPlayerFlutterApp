import 'dart:ui';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplyer/color.dart';
import 'package:musicplyer/screens/modal/albumlist.dart';
import 'package:musicplyer/screens/modal/itemlist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Mycolor.scafoldBg,
          toolbarHeight: 135,
          flexibleSpace: MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              child: SafeArea(child: _appbar())),
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //appbar

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _itemscroll(),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Popular Playlist",
                        style: TextStyle(
                            color: Mycolor.headerTextColor,
                            fontFamily: 'Jakarta',
                            fontWeight: FontWeight.w800,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 410,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20),
                            itemCount: hslist.length,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  albumlist[index].imgAl))),
                                      foregroundDecoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: LinearGradient(
                                            end: Alignment(0, -1),
                                            begin: Alignment.bottomCenter,
                                            colors: [
                                              Color.fromARGB(255, 0, 0, 0),
                                              Color.fromARGB(179, 0, 0, 0),
                                              Color.fromARGB(28, 0, 0, 0),
                                            ],
                                          )),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 0,
                                      right: 0,
                                      child: Column(
                                        children: [
                                          Text(
                                              albumlist[index].nameAl +
                                                  " Album",
                                              style: TextStyle(
                                                  color:
                                                      Mycolor.headerTextColor,
                                                  fontFamily: 'Jakarta',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15)),
                                          Text(
                                              albumlist[index].numberli +
                                                  " View",
                                              style: TextStyle(
                                                  color:
                                                      Mycolor.headerTextColor,
                                                  fontFamily: 'Jakarta',
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                )
              ],
            )),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Container(
            height: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Mycolor.bottomnav),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/Selena-Gomez-2.jpg"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "mwake wake",
                            style: TextStyle(
                                fontFamily: 'Jakarta',
                                color: Mycolor.headerTextColor,
                                fontSize: 15),
                          ),
                          Text(
                            "data",
                            style: TextStyle(
                                fontFamily: 'Jakarta',
                                color: Mycolor.bodyTextColor,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Mycolor.primary.withOpacity(0.3)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.headphones,
                                color: Mycolor.primary,
                                size: 15,
                              ),
                              Text(
                                "HeadPhone",
                                style: TextStyle(
                                    fontFamily: 'Jakarta',
                                    color: Mycolor.primary,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ))
                  ],
                ),

                //add bar

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ProgressBar(
                    progress: Duration(seconds: 100),
                    thumbColor: Mycolor.primary,
                    progressBarColor: Mycolor.primary,
                    total: Duration(seconds: 132),
                    baseBarColor: Mycolor.primary.withOpacity(.5),
                    timeLabelTextStyle:
                        TextStyle(color: Mycolor.headerTextColor),
                    onSeek: (duration) {
                      print('User selected a new time: $duration');
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                        )),
                    Container(
                      decoration: BoxDecoration(
                          color: Mycolor.primary,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton.filled(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          )),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_next,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Column _itemscroll() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Popular Artists",
            style: TextStyle(
                color: Mycolor.headerTextColor,
                fontFamily: 'Jakarta',
                fontWeight: FontWeight.w800,
                fontSize: 16),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
          child: SizedBox(
            height: 130,
            child: ListView.builder(
                itemCount: hslist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(hslist[index].img))),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            hslist[index].name,
                            style: TextStyle(
                                color: Mycolor.headerTextColor,
                                fontFamily: 'Jakarta',
                                fontWeight: FontWeight.w300,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }

  Column _appbar() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Mycolor.bodyTextColor)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Dear,",
                      style: TextStyle(
                          color: Mycolor.bodyTextColor,
                          fontFamily: 'Jakarta',
                          fontWeight: FontWeight.w300,
                          fontSize: 14)),
                  Text("Enjoy listening music here.",
                      style: TextStyle(
                          color: Mycolor.headerTextColor,
                          fontFamily: 'Jakarta',
                          fontWeight: FontWeight.w300,
                          fontSize: 14))
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Mycolor.bodyTextColor)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              fillColor: Mycolor.searchColor,
              filled: true,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic_none_outlined),
              suffix: Text("|"),
              hintText: 'Search among all Singers, Albums ,...',
              hintStyle: TextStyle(
                  color: Mycolor.bodyTextColor,
                  fontFamily: 'Jakarta',
                  fontSize: 12),
            ),
          ),
        )
      ],
    );
  }
}
