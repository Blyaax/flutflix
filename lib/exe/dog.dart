// import 'dart:convert';
// /// userId : 1
// /// id : 1
// /// title : "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
// /// body : "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto"
//
// Dog dogFromJson(String str) => Dog.fromJson(json.decode(str));
// String dogToJson(Dog data) => json.encode(data.toJson());
// class Dog {
//   Dog({
//       num? userId,
//       num? id,
//       String? title,
//       String? body,}){
//     _userId = userId;
//     _id = id;
//     _title = title;
//     _body = body;
// }
//
//   Dog.fromJson(dynamic json) {
//     _userId = json['userId'];
//     _id = json['id'];
//     _title = json['title'];
//     _body = json['body'];
//   }
//   num? _userId;
//   num? _id;
//   String? _title;
//   String? _body;
// Dog copyWith({  num? userId,
//   num? id,
//   String? title,
//   String? body,
// }) => Dog(  userId: userId ?? _userId,
//   id: id ?? _id,
//   title: title ?? _title,
//   body: body ?? _body,
// );
//   num? get userId => _userId;
//   num? get id => _id;
//   String? get title => _title;
//   String? get body => _body;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['userId'] = _userId;
//     map['id'] = _id;
//     map['title'] = _title;
//     map['body'] = _body;
//     return map;
//   }
//
// }