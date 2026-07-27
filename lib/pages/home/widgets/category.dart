import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamestore/models/newest.dart';
import 'package:gamestore/pages/home/widgets/popular.dart';


class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      "icon": Icons.track_changes_outlined,
      "color": Color(0xff605CF4),
      "title": "Arcade"
    },
    {
      "icon": Icons.sports_esports_outlined,
      "color": Color(0xff5cbff4),
      "title": "Arcade"
    },
    {
      "icon": Icons.dashboard_outlined,
      "color": Color(0xfff4d15c),
      "title": "Arcade"
    },
    {
      "icon": Icons.gamepad_outlined,
      "color": Color(0xfff48a5c),
      "title": "Arcade"
    },
    {
      "icon": Icons.hail_outlined,
      "color": Color(0xff5cf464),
      "title": "Arcade"
    },
    {
      "icon": Icons.sports_esports,
      "color": Color(0xfff45cad),
      "title": "Arcade"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      decoration: BoxDecoration(
        color: Color(0xfff6f8ff),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 40),
              scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index)=> Column(
                  children: [
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: categories[index]["color"] as Color,
                      ),
                      child: Icon(
                        categories[index]["icon"] as IconData,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      categories[index]["title"] as String,
                      style: TextStyle(
                        color: Colors.black.withValues(alpha: 0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ],
                )),
                separatorBuilder: ((context, index) => SizedBox(
                          width: 33,)
                ),
                itemCount: categories.length),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Popular Game",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          PopularGame(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Newest Game",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          NewestGame(),
        ],
      ),
    );
  }
}
