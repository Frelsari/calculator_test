import 'package:math_expressions/math_expressions.dart';

//define variable
String equation = ''; //算式
String display = ''; //顯示結果
String result = ''; //計算結果

//清除
void clear() {
  equation = '';
  result = '';
  display = '';
}

//修改算式
void delete() {
  result = '';
  display = '';
  if (equation != '') {
    equation = equation.substring(0, equation.length - 1);
  }
}

//編輯算式
void editEquation(String context) {
  equation = equation + context;
}

//計算所輸入算式
void evaluate() {
  //math_expreesion計算
  try {
    Parser p = Parser();
    Expression exp = p.parse(equation);
    ContextModel cm = ContextModel();
    result = '${exp.evaluate(EvaluationType.REAL, cm)}';
  } catch (e) {
    result = 'Error';
    print(e);
  }
  //篩選顯示結果
  if (result.length > 10) {
    display = result.substring(0, 9);
  } else {
    display = result;
  }
}
