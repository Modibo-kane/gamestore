import 'package:flutter/material.dart';

import '../../../models/game.dart';
import '../../detail/detail.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.game();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20
        ),
        scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
            onTap: (()=> Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => DetailPage(game: games[index])
              ),
            )),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: games[index].name,
                    child: Image.asset(games[index].bgImage),
                  ),
                )
              )
            ),
          )),
          separatorBuilder: ((context, index) => const SizedBox(width: 10,)),
          itemCount: games.length
      ),
    );
  }
}
