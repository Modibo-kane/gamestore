import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        right: 25,
        left: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcom, ",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "What would you like to play ? ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              "assets/images/avatar.png",
              fit: BoxFit.cover,
            )
          )
        ],
      ),
    );
  }
}
