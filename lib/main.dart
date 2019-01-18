//导入包
import 'package:flutter/material.dart';

//应用入口
void main() => runApp(new MyApp());

//应用结构


//StatelessWidget用于不需要维护状态的场景，它通常在build方法中通过嵌套其它Widget来构建UI，
// 在构建过程中会递归的构建其嵌套的Widget。




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Echo(text: "hello, world" ,backgroundColor: Colors.blue);
  }


}




class Echo extends StatelessWidget {
   Echo({
     this.text,
     this.backgroundColor,
  });

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text,textDirection: TextDirection.ltr,),
      ),
    );
  }
}

