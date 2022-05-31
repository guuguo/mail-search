
import 'package:dio/dio.dart';
import 'package:mail_search/bean/entity/mail_item_entity.dart';
import 'package:mail_search/bean/entity/mail_reply_entity.dart';
import 'package:mail_search/generated/json/base/json_convert_content.dart';
import 'package:mail_search/net/dio_helper.dart';

const int pageLimited = 20;

class NetRepository {
  ///
  static Future<List<MailItemEntity>?> queryMailList(
      [String query = "", pageNum = 1, pageSize = 100]) async {
    var res = await DioHelper.dio.post<dynamic>("https://zxts.zjzwfw.gov.cn/xf-api/mhww/query",data: {
      "pageSize": pageSize,
      "pageNum": pageNum,
      "bt": query,
      "bldw": "",
      "startTime": "",
      "endTime": "",
      "wtsdxzqhdm": "",
      "xfmd": "",
      "xfxs": "",
      "code": "33"
    });
    return JsonConvert.fromJsonAsT<List<MailItemEntity>>(res.data['data']['records']);
  }
  static Future<MailReplyEntity> queryMailDetail(String storeid) async {
    var res = await DioHelper.dio.get<dynamic>("https://zxts.zjzwfw.gov.cn/xf-api/mhww/queryDetail",queryParameters: {"storeid":storeid});
    return MailReplyEntity.fromJson(res.data['data']);
  }
}
