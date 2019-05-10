import 'package:flutter/material.dart';

class SliverAppBarLessDefault extends StatelessWidget {
  final List<ListItem> listData = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 20; i++) {
      listData.add(ListItem("我是测试标题$i", Icons.cake));
    }
    return SizedBox(
      height: 500.0,
      child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                primary: true,
                forceElevated: false,
                automaticallyImplyLeading: true,
                titleSpacing: NavigationToolbar.kMiddleSpacing,
                snap: false,
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("我是一个帅气的标题",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    //"http://h.hiphotos.baidu.com/image/pic/item/342ac65c103853434cc02dda9f13b07eca80883a.jpg",
                    "http://b.zol-img.com.cn/desk/bizhi/image/6/960x600/1432800027589.jpg",
                    //"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1531798262708&di=53d278a8427f482c5b836fa0e057f4ea&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F342ac65c103853434cc02dda9f13b07eca80883a.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ];
          },
          body: Center(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListItemWidget(listData[index]);
              },
              itemCount: listData.length,
            ),
          )),
    );
  }
}

class ListItem {
  final String title;
  final IconData iconData;

  ListItem(this.title, this.iconData);
}

class ListItemWidget extends StatelessWidget {
  final ListItem listItem;

  ListItemWidget(this.listItem);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: Icon(listItem.iconData),
        title: Text(listItem.title),
      ),
      onTap: () {},
    );
  }
}
