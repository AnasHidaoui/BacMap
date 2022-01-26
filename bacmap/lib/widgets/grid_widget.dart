import 'package:bacmap/pages/exams_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridWidget extends StatelessWidget {
  List listOfSubjects;

  GridWidget({required this.listOfSubjects, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: listOfSubjects.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ExamsPage(listOfSubjects[index].listOfExams)))
                  },
                  child: Image.asset(listOfSubjects[index].image),
                ),
              ),
              Text(
                listOfSubjects[index].title,
                style: const TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
      ),
    );
  }
}
