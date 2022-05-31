import 'package:get/get.dart';
import 'package:mail_search/bean/entity/mail_item_entity.dart';
import 'package:mail_search/global/constant.dart';
import 'package:mail_search/repository/net_repository.dart';
import 'package:mail_search/route_config.dart';

class MainLogic extends GetxController {
  RxList<MailItemEntity> mails = <MailItemEntity>[].obs;

  var query = "";
  var page = 1;
  var loading = false.obs;
  var refreshing = true.obs;
  var loadEnd = false.obs;

  MainLogic() {
    init();
  }

  Future toDetailPage(MailItemEntity item) async {
    return await Get.toNamed(RouteConfig.mail_detail,
        arguments: {ARG_MAIL_ITEM_BEAN: item});
  }

  Future<void> init() async {
    try {
      await refreshMailList();
    } catch (e) {
      Get.defaultDialog(
          middleText: e.toString()??"网络请求出错了",
          textCancel: "关闭",
          onCancel: () {
            Get.back();
          });
    }
  }

  refreshMailList() async {
    print("refreshMailList start");
    page = 0;
    refreshing.value = true;
    loadEnd.value = false;
    update();
    mails.clear();
    mails.addAll(await NetRepository.queryMailList(query, page) ?? []);
    refreshing.value = false;
    print("refreshMailList done");
    update();
  }

  loadMailList() async {
    loading.value = true;
    update();
    page++;
    var list = await NetRepository.queryMailList(query, page) ?? [];
    if (list.isEmpty) {
      loadEnd.value = true;
    }
    mails.addAll(list);
    loading.value = false;
    update();
  }
}
