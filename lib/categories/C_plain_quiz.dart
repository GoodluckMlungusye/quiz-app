import 'package:quiz_app/pages/Question.dart';


List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "What is the name for calling a function inside the same function?",
    [
      Answer("subfunction", false),
      Answer("inner call", false),
      Answer("recursion", true),
      Answer("infinite loop", false),
    ],
  ));

  list.add(Question(
    "What is optional in a function declaration?",
    [
      Answer("parameter names", true),
      Answer("data type of parameters", false),
      Answer("return type of function", false),
      Answer("number of parameters", false),
    ],
  ));

  list.add(Question(
    "What is not one of the reserved words in standard C?",
    [
      Answer("volatile", false),
      Answer("register", false),
      Answer("typedef", false),
      Answer("typeof", true),
    ],
  ));


  list.add(Question(
    "C treats all devices, such as the display and the keyboard, as files. Which files opens automatically when a program executes?",
    [
      Answer("stdio.h", false),
      Answer("default.h", false),
      Answer("string.h", false),
      Answer("stdout", true),
    ],
  ));

  list.add(Question(
    "In which segment does dynamic memory allocation takes place?",
    [
      Answer("BSS Segment", false),
      Answer("stack", false),
      Answer("data segment", false),
      Answer("heap", true),
    ],
  ));


  return list;
}
