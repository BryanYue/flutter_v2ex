/*
* @author Bryan
* @emil phantom3792@gmail.com
* create at 2019/1/21  11:03
* description:  app首页
*/

import 'package:flutter/material.dart';
import 'package:flutter_v2ex/api/NetworkManager.dart';
import 'package:flutter_v2ex/model/TopicsBean.dart';
import 'package:flutter_v2ex/res/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter_v2ex/api/ApiService.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //底部按钮  数据配置
  List barItem = [
    {'title': '全部', 'icon': new Icon(Icons.question_answer)},
    {'title': '消息', 'icon': new Icon(Icons.message)},
    {'title': '我的', 'icon': new Icon(Icons.account_circle)},
  ];

  //底部按钮 widget
  List<BottomNavigationBarItem> myBars = [];

  //选中条目 index
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState');
    myBars.clear();
    for (int i = 0; i < barItem.length; i++) {
      myBars.add(new BottomNavigationBarItem(
          title: Text(barItem[i]['title']), icon: barItem[i]['icon']));
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    // TODO: implement build
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(barItem[_selectedIndex]['title']),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: myBars,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          iconSize: 24,
          fixedColor: Colors.blue,
          onTap: _onItemTapped,
        ),
        primary: true,
      ),
      theme: theme.themeData,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


@override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);


    print('setState:' + _selectedIndex.toString());

    //
    if (_selectedIndex == 2) {
      theme.setThemeDark(!theme.dark);

      Dio dio = new Dio();

      dio.get(ApiService.HOT_TOPICS).then((r){
        List<TopicsHotBean> list =TopicsHotBean.fromMapList(r.data);

        print(list[0].title);
        print(list[0].url);



      });
    }


  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}
