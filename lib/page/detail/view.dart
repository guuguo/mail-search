import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mail_search/bean/entity/mail_item_entity.dart';
import 'package:mail_search/global/constant.dart';

import '../main/logic.dart';
import 'logic.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late MailItemEntity itemBean;
  @override
  initState() {
    super.initState();
    itemBean=Get.arguments[ARG_MAIL_ITEM_BEAN];
    Get.find<DetailLogic>().initMail(itemBean.storeid??"");
  }

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<DetailLogic>();
    return Scaffold(
      appBar: CupertinoNavigationBar(middle: Text("问题详情(${itemBean.blsj})")),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: GetX<DetailLogic>(
          builder: (DetailLogic logic) {
            final bean = logic.mail.value;
            if (logic.refreshing.value) {
              return Center(child: CupertinoActivityIndicator());
            } else {
              return Container(
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          itemBean.bt ?? "",
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              shadows: [
                                BoxShadow(
                                  color: Theme.of(context).dividerColor,
                                  offset: Offset(0,3),
                                  blurRadius: 10,
                                )
                              ],
                              color: Theme.of(context).cardColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Text("问：${bean?.nr ?? ""}",style:Theme.of(context).textTheme.caption?.copyWith(fontSize:13))),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${bean?.dfyj ?? ""}",style:TextStyle(fontSize:16)),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
