import 'package:quiz_app/pages/Question.dart';


List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Which of the following operators is overloadable?",
    [
      Answer("?:", false),
      Answer("::", false),
      Answer("new", true),
      Answer(".", false),
    ],
  ));

  list.add(Question(
    " Which of the following is the correct syntax of including a user defined header files in C++?",
    [
      Answer("#include 'userdefined'", true),
      Answer("#include [userdefined]", false),
      Answer(" #include <userdefined.h>", false),
      Answer("#include <userdefined>", false),
    ],
  ));

  list.add(Question(
    " What is the value of x after running this code? int x=10, a=-3; x=+a;",
    [
      Answer("3", false),
      Answer("7", false),
      Answer("13", false),
      Answer("-3", true),
    ],
  ));

  list.add(Question(
    "Which of the following user-defined header file extension used in c++?",
    [
      Answer(" cpp", false),
      Answer("hg", false),
      Answer("hf", false),
      Answer("h", true),
    ],
  ));

  list.add(Question(
    "Which of the following approach is used by C++?",
    [
      Answer("Left-right", false),
      Answer("Top-down", false),
      Answer(" Right-left", false),
      Answer("Bottom-up", true),
    ],
  ));

  return list;
}
