import 'package:books/components/style.dart';
import 'package:flutter/material.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: kTetxColor.withOpacity(0.4),
              offset: Offset(1,1),
              blurRadius: 4,
              spreadRadius: 0.6
            ),
          ],
          borderRadius: BorderRadius.circular(20)
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon:  Icon(
                  Icons.search,
                  color: kPrimaryColor,
                  size: 25,
                ),
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: "Search for books...",
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.grey.withOpacity(0.7),
            )
          )
        )
      ),
    );
  }
}