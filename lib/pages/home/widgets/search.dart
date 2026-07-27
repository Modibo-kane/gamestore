import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none
                ),
              ),
              prefixIcon: Icon(
                Icons.search_outlined,
                size: 30,
              ),
              hintText: "Search Game"
            ),
          ),
          Positioned(
            right: 12,
            bottom: 10,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff5f67ea)
              ),
              child: Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25,
              ),
              ),
          ),
        ],
      ),
    );
  }
}
