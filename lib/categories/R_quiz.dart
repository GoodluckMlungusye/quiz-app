import 'package:quiz_app/pages/Question.dart';


List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "R is an__________programming language?",
    [
      Answer("Closed source", false),
      Answer(" GPL", false),
      Answer("Open source.", true),
      Answer(" Definite source", false),
    ],
  ));

  list.add(Question(
    "What do you use to take an object such as a data frame out of the workspace?",
    [
      Answer("remove()", true),
      Answer("erase()", false),
      Answer("detach()", false),
      Answer("delete()", false),
    ],
  ));

  list.add(Question(
    "Who developed R?",
    [
      Answer("Dennis Ritchie", false),
      Answer("Mark Zuckerberg", false),
      Answer("Bjarne Stroustrup", false),
      Answer("John Chambers", true),
    ],
  ));

  list.add(Question(
    "R is an interpreted language so it can access through_____?",
    [
      Answer(" Operating system", false),
      Answer("User interface operating system", false),
      Answer("Command line interpreter", true),
      Answer("Operating system", false),
    ],
  ));

  list.add(Question(
    "Which is not a property of lists and vectors?",
    [
      Answer("scalar", true),
      Answer("type", false),
      Answer("length", false),
      Answer("attributes", false),
    ],
  ));

  return list;
}
