import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/widgets/book_progress_view/book_progress_view_bar.dart';
import 'package:flutter/material.dart';

class BookProgressView extends StatefulWidget {
  int pageCount;
  int currentPage;
  int progress;

  BookProgressView(
      {required this.pageCount,
      required this.currentPage,
      required this.progress,
      super.key});

  @override
  _BookProgressView createState() => _BookProgressView();
}

class _BookProgressView extends State<BookProgressView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Page ${widget.currentPage} of ${widget.pageCount}",
              style: TextStyle(
                color: primaryContent,
                fontSize: 10.0,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        BookProgressViewBar(
          progressLevel: widget.progress,
        ),
        SizedBox(
          height: 5.0,
        )
      ],
    );
  }
}
