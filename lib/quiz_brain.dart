import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('A processor accepts your commands for the computer', true),
    Question('Information technology can help all kinds of businesses improve the efficiency and effectiveness of their business processes and managerial decision making.', true),
    Question('Maintenance is one of the key activities in the development and management of a business information system.', true),
    Question('One system can be made up of other systems or can be a part of a bigger system.', true),
    Question('Most retail stores now use computer-based information systems to keep track of inventory, but few use them to evaluate sales trends.', true),
    Question('Expert systems can serve as consultants to users by providing expert advice in limited subject areas.', true),
    Question(
        'An extranet is an Internet-like network inside the enterprise; an intranet is between the enterprise and its trading partners. ',
        false),
    Question(
        'Enterprise collaboration systems involve the use of software tools to support e-commerce functions with customers and suppliers.', false),
    Question(
        'An information system that supports accounting is an example of a functional business system.',
        true),
    Question(
        'In real-time processing, data are processed immediately after a transaction occurs.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Increased importance placed on cyber-security will reduce the need for workers skilled in information security',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
