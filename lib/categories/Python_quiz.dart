import 'package:quiz_app/pages/Question.dart';


List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Which of the following types of inheritance is not supported by Python?",
    [
      Answer("Hierarchical Inheritance", false),
      Answer("Multilevel Inheritance", false),
      Answer("None of the above", true),
      Answer("Hybrid Inheritance", false),
    ],
  ));

  list.add(Question(
    "What data structure does a binary tree degenerate to if it isn’t balanced properly?",
    [
      Answer("linked list", true),
      Answer("queue", false),
      Answer("set", false),
      Answer("OrderedDict", false),
    ],
  ));

  list.add(Question(
    "A class is an instance of which of the following?",
    [
      Answer("ParentClass", false),
      Answer("SuperClass", false),
      Answer("All the above", false),
      Answer("MetaClass", true),
    ],
  ));

  list.add(Question(
    " What is the correct syntax for defining a class called Game?",
    [
      Answer("def Game: pass", false),
      Answer("def Game(): pass", false),
      Answer("class Game: pass", true),
      Answer("class Game(): pass", false),
    ],
  ));

  list.add(Question(
    "What buit-in Python data type is commonly used to represent a stack?",
    [
      Answer("list", true),
      Answer("set", false),
      Answer("You can only build a stack from scratch.", false),
      Answer("dictionary", false),
    ],
  ));

  return list;
}
