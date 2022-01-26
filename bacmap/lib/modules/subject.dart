import 'package:bacmap/modules/exam.dart';

class Subject {
  String title = "";
  String image = "";
  List listOfExams = <Exam>[];
  Subject(
      {required this.title, required this.image, required this.listOfExams});
}
