import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  int qNo = 0;
  int score = 0;

  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;

  List questions = [
    {
      "question": "Flutter is developed by?",
      "options": ["Google", "Microsoft", "Apple", "Facebook"],
      "answer": 0
    },
    {
      "question": "Dart is?",
      "options": ["Language", "IDE", "Database", "OS"],
      "answer": 0
    },
    {
      "question": "Which widget is layout?",
      "options": ["Column", "Text", "Image", "Icon"],
      "answer": 0
    },
    {
      "question": "Android is by?",
      "options": ["Google", "Apple", "Meta", "Tesla"],
      "answer": 0
    },
    {
      "question": "Text show widget?",
      "options": ["Text", "Row", "Stack", "Container"],
      "answer": 0
    },
    {
      "question": "Flutter runs on?",
      "options": ["Mobile", "Web", "Desktop", "All"],
      "answer": 3
    },
    {
      "question": "Clickable widget?",
      "options": ["ElevatedButton", "Text", "Padding", "SizedBox"],
      "answer": 0
    },
    {
      "question": "Dart extension?",
      "options": [".dart", ".java", ".py", ".js"],
      "answer": 0
    },
    {
      "question": "Horizontal layout?",
      "options": ["Row", "Column", "Stack", "ListView"],
      "answer": 0
    },
    {
      "question": "Stateful widget?",
      "options": ["StatefulWidget", "StatelessWidget", "Container", "Text"],
      "answer": 0
    },
  ];

  void resetOptions() {
    a = false;
    b = false;
    c = false;
    d = false;
  }

  void nextQuestion() {
    int correctIndex = questions[qNo]["answer"];

    if ((a && correctIndex == 0) ||
        (b && correctIndex == 1) ||
        (c && correctIndex == 2) ||
        (d && correctIndex == 3)) {
      score++;
    }

    if (qNo < questions.length - 1) {
      setState(() {
        qNo++;
        resetOptions();
      });
    } else {
      showResult();
    }
  }

  void showResult() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: Text("Result"),
        content: Text("Score: $score / ${questions.length}"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);

              setState(() {
                qNo = 0;
                score = 0;
                resetOptions();
              });
            },
            child: Text("Restart"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    var q = questions[qNo];

    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          color: Color.fromARGB(255, 231, 185, 207),
        ),

        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),

            child: Container(
              padding: EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 94, 116),
                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    spreadRadius: 3,
                  )
                ],
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Question ${qNo + 1}/${questions.length}",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    q["question"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 20),

                  buildOption(
                    q["options"][0],
                    a,
                    (val) => setState(() => a = val!),
                  ),

                  buildOption(
                    q["options"][1],
                    b,
                    (val) => setState(() => b = val!),
                  ),

                  buildOption(
                    q["options"][2],
                    c,
                    (val) => setState(() => c = val!),
                  ),

                  buildOption(
                    q["options"][3],
                    d,
                    (val) => setState(() => d = val!),
                  ),

                  SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),

                      onPressed: nextQuestion,

                      child: Text(
                        qNo == 9 ? "Submit" : "Next",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildOption(
    String text,
    bool value,
    Function(bool?) onChanged,
  ) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),

      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
      ),

      child: CheckboxListTile(
        title: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),

        value: value,
        onChanged: onChanged,
        activeColor: Colors.white,
        checkColor: Colors.black,
      ),
    );
  }
}