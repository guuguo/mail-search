import 'package:get/get.dart';
import 'package:mail_search/bean/entity/mail_item_entity.dart';
import 'package:mail_search/repository/net_repository.dart';

import '../../bean/entity/mail_reply_entity.dart';

class DetailLogic extends GetxController {
  Rx<MailReplyEntity?> mail=Rx(null);
  late String storeid;
  var refreshing = false.obs;

  void initMail(String storeid) async {
    this.storeid = storeid;
    await loadMailDetail();
  }

  loadMailDetail() async {
    refreshing.value = true;
    update();
    var bean = await NetRepository.queryMailDetail(storeid);
    mail.value = bean;
    refreshing.value = false;
    update();
  }
}
