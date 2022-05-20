import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class User {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  User(
      {this.userId,
      this.id,
      this.title,
      this.completed});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);


}
