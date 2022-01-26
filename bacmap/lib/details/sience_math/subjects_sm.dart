import 'package:bacmap/details/sience_math/exams/english.dart';
import 'package:bacmap/details/sience_math/exams/math.dart';
import 'package:bacmap/details/sience_math/exams/philosophy.dart';
import 'package:bacmap/details/sience_math/exams/physic.dart';
import 'package:bacmap/details/sience_math/exams/svt.dart';
import 'package:bacmap/modules/subject.dart';

class SubjectsSm {
  static List listOfSubjectsSM = <Subject>[
    Subject(
      title: "Math",
      image: "./assets/math.png",
      listOfExams: MathOfSM.listOfExams,
    ),
    Subject(
      title: "Phisic",
      image: "./assets/phisic.png",
      listOfExams: PhysicOfSM.listOfExams,
    ),
    Subject(
      title: "SVT",
      image: "./assets/svt.png",
      listOfExams: SvtOfSM.listOfExams,
    ),
    Subject(
      title: "English",
      image: "./assets/english.png",
      listOfExams: English.listOfExams,
    ),
    Subject(
      title: "Philosophy",
      image: "./assets/philo.png",
      listOfExams: Pylosophy.listOfExams,
    ),
  ];
}
