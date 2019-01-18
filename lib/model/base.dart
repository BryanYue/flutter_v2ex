import 'package:json_annotation/json_annotation.dart';


//这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class Base<T>{
  Base(this.code, this.msg,this.result,this.total_page);

  int code;
  String msg;
  T result;
  int total_page;


}