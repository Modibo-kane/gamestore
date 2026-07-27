import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/detail/widgets/description.dart';
import 'package:gamestore/pages/detail/widgets/detail_sliver.dart';
import 'package:gamestore/pages/detail/widgets/gallery.dart';
import 'package:gamestore/pages/detail/widgets/game_info.dart';
import 'package:gamestore/pages/detail/widgets/review.dart';

import '../../models/delegate_silver.dart';
class DetailPage extends StatelessWidget {
  final Game game;

  const DetailPage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GameInfo(game),
                GallerySection(game),
                DescriptionSection(game),
                const SizedBox(height: 20),
                ReviewSection(game),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}