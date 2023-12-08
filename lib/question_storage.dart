import 'package:amrendra_app/question.dart';

class Test {
  bool finished = false;
  int index = 0;
  List<QuestionTF> quesList = [];
  Test() {
    quesList = [
      QuestionTF(
        ques: 'Mercury is the hottest planet in the solar system.',
        ans: false,
      ),
      QuestionTF(
        ques:
            "The Japanese car company Toyota was originally established as a textiles manufacturer",
        ans: true,
      ),
      QuestionTF(
        ques:
            'Driving in a car is statistically safer than flying in an aeroplane.',
        ans: false,
      ),
      QuestionTF(
        ques: "The Titanic ship cost more to build than the move cost to make",
        ans: false,
      ),
      QuestionTF(
        ques: 'Ants can hold up to 5,000 times their body weight.',
        ans: true,
      ),
      QuestionTF(
        ques: " Star Wars is Disney’s best-selling movie.",
        ans: false,
      ),
      QuestionTF(
        ques: ' Dark chocolate is actually good for you.',
        ans: true,
      ),
      QuestionTF(
        ques: 'The unicorn is the national animal of Scotland.',
        ans: true,
      ),
      QuestionTF(
        ques: ' The liver is the second heaviest organ in the body.',
        ans: true,
      ),
      QuestionTF(
        ques: 'South Africa has three capitals.',
        ans: true,
      ),
    ];
  }

  int getScore() {
    int score = 0;
    for (QuestionTF q in quesList) if (q.getStatus() ?? false) score++;
    return score;
  }
}
