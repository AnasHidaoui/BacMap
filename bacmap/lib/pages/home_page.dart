import 'package:bacmap/constants/app_constants.dart';
import 'package:bacmap/details/sience_math/subjects_sm.dart';
import 'package:bacmap/widgets/drawer_widget.dart';
import 'package:bacmap/widgets/grid_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstants.appBarColor,
          centerTitle: true,
          title: const Text(
            AppConstants.appName,
            style: TextStyle(
                color: AppConstants.homeColor, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorWeight: 4,
            tabs: [
              Text("SM", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("PC", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("SVT", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridWidget(listOfSubjects: SubjectsSm.listOfSubjectsSM),
            GridWidget(listOfSubjects: SubjectsSm.listOfSubjectsSM),
            GridWidget(listOfSubjects: SubjectsSm.listOfSubjectsSM),
          ],
        ),
        drawer: const DrawerWidget(),
      ),
    );
  }
}
