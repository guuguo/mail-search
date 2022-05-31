import 'package:mail_search/generated/json/base/json_convert_content.dart';
import 'package:mail_search/bean/entity/mail_item_entity.dart';

MailItemEntity $MailItemEntityFromJson(Map<String, dynamic> json) {
	final MailItemEntity mailItemEntity = MailItemEntity();
	final String? storeid = jsonConvert.convert<String>(json['storeid']);
	if (storeid != null) {
		mailItemEntity.storeid = storeid;
	}
	final String? bt = jsonConvert.convert<String>(json['bt']);
	if (bt != null) {
		mailItemEntity.bt = bt;
	}
	final String? bldwid = jsonConvert.convert<String>(json['bldwid']);
	if (bldwid != null) {
		mailItemEntity.bldwid = bldwid;
	}
	final String? bldw = jsonConvert.convert<String>(json['bldw']);
	if (bldw != null) {
		mailItemEntity.bldw = bldw;
	}
	final String? blsj = jsonConvert.convert<String>(json['blsj']);
	if (blsj != null) {
		mailItemEntity.blsj = blsj;
	}
	final String? xfmdCode = jsonConvert.convert<String>(json['xfmdCode']);
	if (xfmdCode != null) {
		mailItemEntity.xfmdCode = xfmdCode;
	}
	final String? xfmd = jsonConvert.convert<String>(json['xfmd']);
	if (xfmd != null) {
		mailItemEntity.xfmd = xfmd;
	}
	final String? xfmdTitle = jsonConvert.convert<String>(json['xfmdTitle']);
	if (xfmdTitle != null) {
		mailItemEntity.xfmdTitle = xfmdTitle;
	}
	final String? xfjclzt = jsonConvert.convert<String>(json['xfjclzt']);
	if (xfjclzt != null) {
		mailItemEntity.xfjclzt = xfjclzt;
	}
	return mailItemEntity;
}

Map<String, dynamic> $MailItemEntityToJson(MailItemEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['storeid'] = entity.storeid;
	data['bt'] = entity.bt;
	data['bldwid'] = entity.bldwid;
	data['bldw'] = entity.bldw;
	data['blsj'] = entity.blsj;
	data['xfmdCode'] = entity.xfmdCode;
	data['xfmd'] = entity.xfmd;
	data['xfmdTitle'] = entity.xfmdTitle;
	data['xfjclzt'] = entity.xfjclzt;
	return data;
}