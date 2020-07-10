class User{
  String note;
  String url;
  User({this.note,this.url});
  factory User.fromJson(Map<String, dynamic> json){
    return User(
      note:json["notes"] as String,
      url:json["url"] as String,


    );
  }
}