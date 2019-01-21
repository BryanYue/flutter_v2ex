//导入包
import 'package:flutter/material.dart';
import 'device/device.dart';
import 'view/HomePage.dart';

//应用入口
void main() async {
  device().get();
  runApp(new MyApp());
}

//应用结构

//StatelessWidget用于不需要维护状态的场景，它通常在build方法中通过嵌套其它Widget来构建UI，
// 在构建过程中会递归的构建其嵌套的Widget。

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new MaterialApp(
      //used by the OS task switcher
      //应用任务切换时  显示的标题
      title: 'V2EX',

      //应用首页路由
      home: HomePage(),
    );
  }
}











