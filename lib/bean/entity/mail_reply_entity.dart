import 'dart:convert';
import 'package:mail_search/generated/json/base/json_field.dart';
import 'package:mail_search/generated/json/mail_reply_entity.g.dart';

@JsonSerializable()
class MailReplyEntity {

	String? storeid;
	String? bt;
	String? nr;
	String? fysj;
	String? sjly;
	String? dfdw;
	String? dfyj;
	String? dfsj;
  
  MailReplyEntity();

  factory MailReplyEntity.fromJson(Map<String, dynamic> json) => $MailReplyEntityFromJson(json);

  Map<String, dynamic> toJson() => $MailReplyEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}