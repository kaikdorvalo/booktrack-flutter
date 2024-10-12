import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/widgets/book_card/book_location_and_type/book_location_and_type.dart';
import 'package:booktrack_flutter/widgets/book_card/book_mark/book_mark.dart';
import 'package:booktrack_flutter/widgets/book_card/book_progress_view/book_progress_view.dart';
import 'package:booktrack_flutter/widgets/book_card/book_stars_view/book_stars_view.dart';
import 'package:booktrack_flutter/widgets/book_card/favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  String title;
  int currentPage;
  int pageCount;
  String bookImageUrl;
  bool favorited;
  int stars;

  BookCard(
      {required this.title,
      required this.pageCount,
      required this.currentPage,
      required this.bookImageUrl,
      required this.favorited,
      required this.stars,
      super.key}) {
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: base100,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Row(
              children: [
                Container(
                  width: 71.0,
                  height: 105.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.bookImageUrl),
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
                                widget.title,
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
                              starred: widget.stars,
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
                      FavoriteButton(
                        favorited: widget.favorited,
                      ),
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
          ),
          SizedBox(
            height: 20.0,
          ),
          BookLocationAndType()
        ],
      ),
    );
  }
}
