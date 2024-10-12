import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/data/model/book_model.dart';
import 'package:booktrack_flutter/widgets/book_card/book_card.dart';
import 'package:booktrack_flutter/widgets/book_card/book_mark/book_mark.dart';
import 'package:booktrack_flutter/widgets/filter_button/filter_button.dart';
import 'package:booktrack_flutter/widgets/page_format/page_format.dart';
import 'package:booktrack_flutter/widgets/search_text_input/search_text_input.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BookModel> books = [
    BookModel(
      "A pequena sereia",
      "https://media.discordapp.net/attachments/1247059612025356329/1293473897395781702/b6ae8e5eb503bc456752e9ef4880d71e.webp?ex=670c1e30&is=670accb0&hm=f81b4b28ca119d051083dcac65a921252c36a4d9faa52df9a3476ba6268e28e8&=&format=webp&width=460&height=660",
      126,
      360,
      false,
      4,
    ),
    BookModel(
      "Senhor dos anéis",
      "https://media.discordapp.net/attachments/1247059612025356329/1293473897395781702/b6ae8e5eb503bc456752e9ef4880d71e.webp?ex=670c1e30&is=670accb0&hm=f81b4b28ca119d051083dcac65a921252c36a4d9faa52df9a3476ba6268e28e8&=&format=webp&width=460&height=660",
      126,
      360,
      false,
      5,
    ),
    BookModel(
      "Era uma vez",
      "https://media.discordapp.net/attachments/1247059612025356329/1293473897395781702/b6ae8e5eb503bc456752e9ef4880d71e.webp?ex=670c1e30&is=670accb0&hm=f81b4b28ca119d051083dcac65a921252c36a4d9faa52df9a3476ba6268e28e8&=&format=webp&width=460&height=660",
      126,
      360,
      true,
      3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: PageFormat(
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BookTrack",
                  style: TextStyle(
                    color: primaryContent,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 65.0,
              child: Row(
                children: [
                  Expanded(
                    child: SearchTextInput(
                      hintText: "Search Book",
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  FilterButton()
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: BookCard(
                      title: books[index].title,
                      pageCount: books[index].pageCount,
                      currentPage: books[index].currentPage,
                      bookImageUrl: books[index].bookImageUrl,
                      favorited: books[index].favorited,
                      stars: books[index].stars,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
