import 'package:bacmap/constants/app_constants.dart';
import 'package:bacmap/services/pdf_manager.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExamsPage extends StatelessWidget {
  List listOFexams;
  ExamsPage(this.listOFexams, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.appBarColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          AppConstants.appName,
          style: TextStyle(
              color: AppConstants.homeColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: listOFexams.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              subtitle: Text(
                listOFexams[index].language,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text(
                listOFexams[index].year,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.picture_as_pdf),
              onTap: () => {_openPDF(context, listOFexams[index].url)},
            ),
          );
        },
      ),
    );
  }

  void _openPDF(BuildContext context, String url) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PDFViewerCachedFromUrl(url: url)));
  }
}
