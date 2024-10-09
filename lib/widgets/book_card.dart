import 'package:booktrack_flutter/constants.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  @override
  _BookCard createState() => _BookCard();
}

class _BookCard extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: base100,
      ),
      child: Row(
        children: [
          Container(
            width: 71.0,
            height: 105.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn.discordapp.com/attachments/1247059612025356329/1293473897395781702/b6ae8e5eb503bc456752e9ef4880d71e.webp?ex=670780f0&is=67062f70&hm=4f69d596a87de6c5e4c50eece5ffd3e4c580355e1681af51b45c617ac4fe5a13&"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "A Pequena Sereia",
                style: TextStyle(
                  color: primaryContent,
                  fontSize: 14.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
