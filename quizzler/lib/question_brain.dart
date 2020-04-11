import 'question.dart';

class QuestionBrain {
  // Initialize Variable
  int _questionNumber = 0;

  // List
  List<Question> _questionList = [
    Question('Soekarno adalah Presiden pertama Indonesia.', true),
    Question('Indonesia merdeka pada tahun 1954.', false),
    Question('Soeharto menjabat menjadi Presiden Indonesia selama 32 tahun.', true),
    Question('Jenderal Abdul Haris Nasution adalah penyintas dalam peristiwa G30S.', true),
    Question('Jokowi adalah presiden Indonesia ke delapan.', false),
    Question('Tragedi Trisakti menewaskan empat mahasiswa Universitas Trisakti.', true),
    Question('Pemilu 2004 adalah pemilu pertama rakyat memilih langsung Presiden.', true),
    Question('SBY memimpin Indonesia selama dua periode.', true),
    Question('Indonesia merupakan Blok Sekutu selama Perang Dunia II.', false),
    Question('Jepang menjajah Indonesia selama 35 tahun.', false),
  ];

  // List Old Ways
  /*
  List<String> questions = [
    'Soekarno adalah Presiden pertama Indonesia.',
    'Indonesia merdeka pada tahun 1954',
    'Soeharto menjabat menjadi Presiden Indonesia selama 31 tahun.',
  ];

  List<bool> answers = [
    true,
    false,
    true,
  ];
   */

  // Methods
  String getQuestionText() {
    return _questionList[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionList[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
    }
  }

  void resetQuestion() {
    _questionNumber = 0;
  }
}
