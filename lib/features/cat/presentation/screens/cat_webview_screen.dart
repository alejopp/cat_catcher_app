import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CatWebViewParams {
  final String url;
  final String title;

  CatWebViewParams({
    required this.url,
    required this.title,
  });
}

class CatWebViewScreen extends StatefulWidget {
  final CatWebViewParams params;

  const CatWebViewScreen({super.key, required this.params});

  @override
  State<CatWebViewScreen> createState() => _CatWebViewScreenState();
}

class _CatWebViewScreenState extends State<CatWebViewScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.params.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.params.title),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
