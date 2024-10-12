class BookModel {
  String title;
  String bookImageUrl;
  int currentPage;
  int pageCount;
  bool favorited;
  int stars;

  BookModel(
    this.title,
    this.bookImageUrl,
    this.currentPage,
    this.pageCount,
    this.favorited,
    this.stars,
  );
}
