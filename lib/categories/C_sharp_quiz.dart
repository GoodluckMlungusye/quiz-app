import 'package:quiz_app/pages/Question.dart';


List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "C# is a programming language, developed by ___.",
    [
      Answer("Oracle", false),
      Answer("GNU project", false),
      Answer("Microsoft", true),
      Answer("Google.", false),
    ],
  ));

  list.add(Question(
    "C# runs on the ___.",
    [
      Answer("NET Framework", true),
      Answer("Java Virtual Machine", false),
      Answer("Both A. and B.", false),
      Answer("None of the above", false),
    ],
  ));

  list.add(Question(
    "Which choice best defines C#'s asynchronous programming model?",
    [
      Answer("reactive", false),
      Answer("inherited callback", false),
      Answer("callback-based", false),
      Answer("task-based", true),
    ],
  ));

  list.add(Question(
    "C# programming language is used to develop -",
    [
      Answer("Web apps", false),
      Answer("Desktop apps", false),
      Answer("Mobiles apps", false),
      Answer("All of the above", true),
    ],
  ));


  list.add(Question(
    "How could you retrieve information about a class, as well as create an instance at runtime?",
    [
      Answer("serialization", false),
      Answer("abstraction", false),
      Answer("dependency injection", false),
      Answer("reflection", true),
    ],
  ));

  return list;
}
