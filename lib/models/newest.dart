import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import "package:gamestore/models/game.dart";

class NewestGame extends StatelessWidget {
   NewestGame({super.key});

  final List<Game> games = Game.game();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: games
            .map((game) =>
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      game.icon,
                      width: 60,
                    ) ,
                  ),
                  const SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        game.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                game.type,
                                style: TextStyle(
                                  color: Colors.grey.withValues(alpha: 0.8)
                                ),
                              ),
                              Row(
                                children: [
                                  RatingBarIndicator(
                                    rating: game.score as double,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 15.0,
                                    direction: Axis.horizontal,
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: 20,),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 15
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF5F67EA),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: const Text(
                              "Install",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          )
                      ],)
                    ],
                  ),
                  )
                ],
              ),
            )
        )  .toList(),
      ),
    );
  }
}
