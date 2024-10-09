import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/widgets/book_mark.dart';
import 'package:booktrack_flutter/widgets/book_progress_view/book_progress_view.dart';
import 'package:booktrack_flutter/widgets/book_stars_view/book_stars_view.dart';
import 'package:booktrack_flutter/widgets/favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  int currentPage;
  int pageCount;

  BookCard({required this.pageCount, required this.currentPage, super.key}) {
    if (pageCount < 0) {
      pageCount = 0;
    }

    if (currentPage < 0 || currentPage > pageCount) {
      currentPage = 0;
    }
  }

  @override
  _BookCard createState() => _BookCard();
}

class _BookCard extends State<BookCard> {
  int calculateBookProgress() {
    double percent = (widget.currentPage * 100) / widget.pageCount;
    return percent.round();
  }

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
            width: 15.0,
          ),
          Expanded(
            child: Container(
              height: 105.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "A Pequena Sereia",
                          style: TextStyle(
                            color: primaryContent,
                            fontSize: 14.0,
                          ),
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BookMark(
                            label: "ongoing",
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      BookStarsView(
                        starred: 3,
                      ),
                    ],
                  ),
                  BookProgressView(
                    pageCount: widget.pageCount,
                    currentPage: widget.currentPage,
                    progress: calculateBookProgress(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            height: 105.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavoriteButton(color: Color(0xFFF8E042)),
                Text(
                  "${calculateBookProgress()}%",
                  style: TextStyle(
                    color: primaryContent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
