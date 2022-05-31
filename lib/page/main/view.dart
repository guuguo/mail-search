import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mail_search/bean/entity/mail_item_entity.dart';
import 'package:mail_search/widget/container.dart';

import 'logic.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<MainLogic>();

    return Scaffold(
      appBar: CupertinoNavigationBar(middle: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: CupertinoSearchTextField(
          onSubmitted: (t) {
            logic.query = t;
            logic.refreshMailList();
          },
        ),
      )),
      backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
      body: GetX<MainLogic>(
        builder: (MainLogic logic) {
          if (logic.refreshing.value) {
            return Center(child: CupertinoActivityIndicator(radius: 15));
          } else {
            return ListView.builder(
              itemBuilder: (c, i) {
                var bean = logic.mails[i];
                return MailItemWidget(bean: bean);
              },
              itemCount: logic.mails.length,
            );
          }
        },
      ),
    );
  }
}

class MailItemWidget extends StatelessWidget {
  const MailItemWidget({
    Key? key,
    required this.bean,
  }) : super(key: key);

  final MailItemEntity bean;

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<MainLogic>();
    return GestureDetector(
      onTap: () {
        logic.toDetailPage(bean);
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: EdgeInsets.all(15),
          decoration: RoundedBoxDecoration(
              radius: 10, color: Theme.of(context).cardColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(bean.bt ?? "", style: Theme.of(context).textTheme.bodyLarge),
              Text(bean.bldw ?? "", style: Theme.of(context).textTheme.bodySmall),
              Text(bean.blsj ?? "", style: Theme.of(context).textTheme.bodySmall)
            ],
          )),
    );
  }
}
