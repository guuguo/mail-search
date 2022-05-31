import 'dart:convert';
import 'package:mail_search/generated/json/base/json_field.dart';
import 'package:mail_search/generated/json/test_entity.g.dart';

@JsonSerializable()
class TestEntity {


  
  TestEntity();

  factory TestEntity.fromJson(Map<String, dynamic> json) => $TestEntityFromJson(json);

  Map<String, dynamic> toJson() => $TestEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}