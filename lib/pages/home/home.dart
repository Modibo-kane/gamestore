import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/category.dart';
import 'package:gamestore/pages/home/widgets/header.dart';
import 'package:gamestore/pages/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(transform: Matrix4.identity()..rotateZ(20),
            origin: Offset(150, 50),
            child: Image.asset(
              'assets/images/bg_liquid.png',
              width: 200,
            ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child:
                  Transform(transform: Matrix4.identity()..rotateZ(20),
                    origin: Offset(180, 100),
                    child: Image.asset(
                      'assets/images/bg_liquid.png',
                      width: 200,
                    ),
                  ),
            ),
            Column(
              children: [
                HeaderSection(),
                SearchSection(),
                CategorySection()
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: navigationBar() ,
    );
  }

  Widget navigationBar(){
    return Container(
      color: Color(0xfff6f8ff),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.2),
              spreadRadius: 5,
              blurRadius: 10
            )
          ]
        ) ,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          ),
          child: BottomNavigationBar(
            selectedItemColor: Color(0xFF5F67EA),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withValues(alpha: 0.7),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(
                      Icons.home,
                      size: 50,
                  )
              ),
              BottomNavigationBarItem(
                  label: "Film",
                  icon:  Icon(
                    Icons.more_horiz,
                    size: 50,
                  )
              ),
              BottomNavigationBarItem(
                  label: "Film",
                  icon:  Icon(
                      Icons.play_arrow_rounded,
                      size: 50
                  )
              ),
              BottomNavigationBarItem(
                  label: "Film",
                  icon:  Icon(
                      Icons.menu_book,
                      size: 50
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
