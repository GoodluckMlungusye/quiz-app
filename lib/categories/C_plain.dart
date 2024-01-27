import 'package:flutter/material.dart';
import 'package:quiz_app/categories/C_plain_quiz.dart';
import 'package:quiz_app/pages/Question.dart';
import 'package:percent_indicator/percent_indicator.dart';

class C_plain extends StatefulWidget {
  const C_plain({Key? key}) : super(key: key);

  @override
  State<C_plain> createState() => _C_plainState();
}

class _C_plainState extends State<C_plain> {


  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc7c2c2),
      appBar: AppBar(
        backgroundColor: Color(0xff00AEEE),
        title: Text(
          'C Quiz',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Scaffold(
          backgroundColor: Color(0xffc7c2c2),
          body: Column(
            children: [
              Text(
                'Attempted  ${currentQuestionIndex + 1}/${questionList.length.toString()}',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  letterSpacing: 2,
                ),
              ),

              LinearPercentIndicator(
                barRadius: Radius.circular(2),
                animation: true,
                animationDuration: 1000,
                lineHeight: 10,
                percent: ((currentQuestionIndex + 1) / questionList.length),
                progressColor: Color(0xff00AEEE),
                backgroundColor: Color(0xffC9DBFF),
              ),



              questionWidget(),
              answerList(),
              nextButton(),

            ],
          ),
        ),
      ),
    );
  }


  questionWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.4),
                      Colors.black.withOpacity(.2),
                    ]
                )
            ),
            child: Text(
              questionList[currentQuestionIndex].questionText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }

  answerList() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: questionList[currentQuestionIndex].answersList.map((answer) => answerButton(answer)).toList(),
      ),
    );
  }

  Widget answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: Text(
            answer.answerText,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10),
            ),
            primary: isSelected ?  Color(0xff00AEEE) : Colors.white,
            onPrimary: isSelected ? Colors.white : Colors.black,
          ),
          onPressed: () {
            if (selectedAnswer == null) {
              if (answer.isCorrect) {
                score++;
              }
              setState(() {
                selectedAnswer = answer;
              });
            }
          },
        ),
      ),
    );
  }

  nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: 48,
        child: ElevatedButton(
          child: Text(isLastQuestion ? "Submit" : "Next"),
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10),
            ),
            primary: Color(0xff00AEEE) ,
            onPrimary: Colors.white,
          ),
          onPressed: () {
            if (isLastQuestion) {
              //display score

              showDialog(context: context, builder: (_) => showScoreDialog());
            } else {
              //next question
              setState(() {
                selectedAnswer = null;
                currentQuestionIndex++;
              });
            }
          },
        ),
      ),
    );
  }

  showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "Passed " : "Failed";

    return AlertDialog(
      title: Text(
        title + " | Score is $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Go to Home"),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}
