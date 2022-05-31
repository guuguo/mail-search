import 'dart:convert';
import 'package:mail_search/generated/json/base/json_field.dart';
import 'package:mail_search/generated/json/mail_item_entity.g.dart';

@JsonSerializable()
class MailItemEntity {

	String? storeid;
	///标题
	String? bt;
	String? bldwid;
	///咨询对象
	String? bldw;
	///时间
	String? blsj;
	String? xfmdCode;
	///咨询类型
	String? xfmd;
	String? xfmdTitle;
	///处理进度 [已作出处理意见]
	String? xfjclzt;
  
  MailItemEntity();

  factory MailItemEntity.fromJson(Map<String, dynamic> json) => $MailItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $MailItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}