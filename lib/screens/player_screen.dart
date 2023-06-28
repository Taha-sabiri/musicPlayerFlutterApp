import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerScr extends StatelessWidget {
  final int index;
  const PlayerScr({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'assets/images/Drake-Chunky-Knit-Sweater-Hotline-Bling.gif'))),
        ),
        Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/poori_kolohom.jpg'))),
          ),
        )
      ],
    );
  }
}
