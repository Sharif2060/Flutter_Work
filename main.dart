class _QuizScreenState extends State<QuizScreen> {
  // ... (unchanged code)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _questions[_currentQuestionIndex]['question'],
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            ...(_questions[_currentQuestionIndex]['options'] as List<String>).map((option) {
              return ElevatedButton(
                onPressed: () => _answerQuestion(option),
                child: Text(option),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final List<Map<String, dynamic>> questions;

  ResultScreen({required this.score, required this.questions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score: $score/${questions.length}',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Reset quiz and navigate back to the quiz screen
                Navigator.pop(context);
              },
              child: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
