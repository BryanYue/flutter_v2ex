import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class theme {
  static bool dark = true;
  static ThemeData themeData = new ThemeData.dark();

  /*
  * 
  *   根据传入布尔值 设置当前主题的 基本主題色調
  * */
  static void setThemeDark(bool b) {
    if (b == dark) return;

    if (b) {
      themeData = new ThemeData.dark();
    } else {
      themeData = new ThemeData.light();
    }
    dark = b;
  }

  /*
* 
* */
  static void setTheme(ThemeData them) {
    themeData = them;

    dark = false;
  }

  /*
  * 
  *   自定义系统主题
  * */
  static void setThemes() {
    themeData = new ThemeData(
        //      brightness: Brightness.light,
        //      primaryColor: Colors.purpleAccent,
        //      accentColor: Colors.purpleAccent,
        //      disabledColor: Colors.purpleAccent,
        //      indicatorColor: Colors.purpleAccent,
        //Scaffold背景色
        //      scaffoldBackgroundColor: Colors.purpleAccent
        );
  }
}
