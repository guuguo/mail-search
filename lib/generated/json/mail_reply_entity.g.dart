import 'package:mail_search/generated/json/base/json_convert_content.dart';
import 'package:mail_search/bean/entity/mail_reply_entity.dart';

MailReplyEntity $MailReplyEntityFromJson(Map<String, dynamic> json) {
	final MailReplyEntity mailReplyEntity = MailReplyEntity();
	final String? storeid = jsonConvert.convert<String>(json['storeid']);
	if (storeid != null) {
		mailReplyEntity.storeid = storeid;
	}
	final String? bt = jsonConvert.convert<String>(json['bt']);
	if (bt != null) {
		mailReplyEntity.bt = bt;
	}
	final String? nr = jsonConvert.convert<String>(json['nr']);
	if (nr != null) {
		mailReplyEntity.nr = nr;
	}
	final String? fysj = jsonConvert.convert<String>(json['fysj']);
	if (fysj != null) {
		mailReplyEntity.fysj = fysj;
	}
	final String? sjly = jsonConvert.convert<String>(json['sjly']);
	if (sjly != null) {
		mailReplyEntity.sjly = sjly;
	}
	final String? dfdw = jsonConvert.convert<String>(json['dfdw']);
	if (dfdw != null) {
		mailReplyEntity.dfdw = dfdw;
	}
	final String? dfyj = jsonConvert.convert<String>(json['dfyj']);
	if (dfyj != null) {
		mailReplyEntity.dfyj = dfyj;
	}
	final String? dfsj = jsonConvert.convert<String>(json['dfsj']);
	if (dfsj != null) {
		mailReplyEntity.dfsj = dfsj;
	}
	return mailReplyEntity;
}

Map<String, dynamic> $MailReplyEntityToJson(MailReplyEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['storeid'] = entity.storeid;
	data['bt'] = entity.bt;
	data['nr'] = entity.nr;
	data['fysj'] = entity.fysj;
	data['sjly'] = entity.sjly;
	data['dfdw'] = entity.dfdw;
	data['dfyj'] = entity.dfyj;
	data['dfsj'] = entity.dfsj;
	return data;
}