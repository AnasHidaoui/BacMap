import 'package:bacmap/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:bacmap/services/open_url_manager.dart';

class PDFViewerCachedFromUrl extends StatelessWidget {
  const PDFViewerCachedFromUrl({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstants.appBarColor,
        title: const Text(AppConstants.appName,
            style: TextStyle(
                color: AppConstants.homeColor, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () => OpenUrl.launchInBrowser(url),
            icon: const Icon(Icons.download_for_offline),
            color: Colors.blueAccent,
          ),
        ],
      ),
      body: const PDF().cachedFromUrl(
        url,
        placeholder: (double progress) =>
            Center(child: Image.asset("./assets/downloading.gif")),
        errorWidget: (dynamic error) =>
            Center(child: Image.asset("./assets/downloading.gif")),
      ),
    );
  }
}
