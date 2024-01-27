import 'package:quiz_app/pages/Question.dart';


List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Given the string 'strawberries' saved in a variable called fruit, what would fruit.substring(2, 5) return?",
    [
      Answer("rawb", false),
      Answer("awb", false),
      Answer("raw", true),
      Answer("traw", false),
    ],
  ));

  list.add(Question(
    " How can you achieve runtime polymorphism in Java?",
    [
      Answer("method overriding", true),
      Answer("method overloading", false),
      Answer("method overrunning", false),
      Answer("method calling", false),
    ],
  ));

  list.add(Question(
    "Given the following definitions, which of these expression will NOT evaluate to true? boolean b1 = true, b2 = false; int i1 = 1, i2 = 2;",
    [
      Answer("(i1 | i2) == 3", false),
      Answer("b1 || !b2", false),
      Answer("(i1 ^ i2) < 4", false),
      Answer("i2 && b1", true),
    ],
  ));

  list.add(Question(
    "System.out.print('apple'.compareTo('banana'));",
    [
      Answer("negative number", true),
      Answer("0", false),
      Answer("positive number", false),
      Answer("compilation error", false),
    ],
  ));

  list.add(Question(
    "The runtime system starts your program by calling which function first?",
    [
      Answer("print", false),
      Answer("iterative", false),
      Answer("hello", false),
      Answer("main", true),
    ],
  ));


  return list;
}
