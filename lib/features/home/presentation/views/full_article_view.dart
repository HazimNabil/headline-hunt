import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FullArticleView extends StatefulWidget {
  final String articleUrl;

  const FullArticleView({super.key, required this.articleUrl});

  @override
  State<FullArticleView> createState() => _FullArticleViewState();
}

class _FullArticleViewState extends State<FullArticleView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.articleUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(controller: _controller),
      ),
    );
  }
}
