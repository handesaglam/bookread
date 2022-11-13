class MyBookData{
int? id;
String? title;

MyBookData( {required this.id, required this.title}
);
Map<String,dynamic> toJson(){

return {
'id':id,
'title':title

};
}
MyBookData.fromJson(Map<String,dynamic> json){
id=json['id'];
title=json['title'];


}


 
}