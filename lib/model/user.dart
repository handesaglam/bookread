class User {
  String? title;
  String? author;

  User({this.title,this.author});

  User.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        author = json['author'
      ];

  Map<String, dynamic> toJson() => {
        'title': title,
        'author': author,
     
      };
}