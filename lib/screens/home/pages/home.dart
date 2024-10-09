import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/widgets/book_card.dart';
import 'package:booktrack_flutter/widgets/filter_button.dart';
import 'package:booktrack_flutter/widgets/page_format.dart';
import 'package:booktrack_flutter/widgets/search_text_input.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Row(
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
            SizedBox(
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
                  SizedBox(
                    width: 10.0,
                  ),
                  FilterButton()
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: ListView(
                children: [
                  BookCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
