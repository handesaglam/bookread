class Book {
  int? id;
  String? title;
  String? image;
  String? author;
  String? gendre;
  String? published;
  String? desciption;

Book({this.id, this.title,this.image,this.author,this.gendre,this.published,this.desciption});

  factory Book.fromJson(Map<String, dynamic> parsedJson) {
    return new  Book(
      id: parsedJson['id'],
      title: parsedJson['title'],
      image: parsedJson['image'],
      author: parsedJson['author'],
      gendre: parsedJson['genre'],
      published: parsedJson['published'],
      desciption: parsedJson['description'],

    );
  }
}
