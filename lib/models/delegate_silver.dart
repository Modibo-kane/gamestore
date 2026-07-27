import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final Game game;
  final double expandedHeight;
  final double roundedContainerHeight;

  DetailSliverDelegate({
    required this.game,
    required this.expandedHeight,
    required this.roundedContainerHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        // Image de fond
        Hero(
          tag: game.name,
          child: Image.asset(
            game.bgImage,
            width: MediaQuery.of(context).size.width,
            height: expandedHeight,
            fit: BoxFit.cover,
          ),
        ),
        // Bouton de retour
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: 15,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
        // Le bloc blanc avec l'arrondi supérieur et le petit tiret bleu
        Positioned(
          top: expandedHeight - shrinkOffset - roundedContainerHeight,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: roundedContainerHeight,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Container(
              width: 60,
              height: 5,
              color: const Color(0xFF5F67EA),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}