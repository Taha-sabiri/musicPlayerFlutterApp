import 'package:flutter/material.dart';
import 'package:musicplyer/color.dart';
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
                ],
              )
            ],
          )),
        ),
      ),
    );
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
