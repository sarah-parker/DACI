//ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class EntryForm extends StatefulWidget {
  final String source;

  const EntryForm({Key? key, required this.source}) : super(key: key);

  @override
  _EntryFormState createState() => _EntryFormState();
}

class _EntryFormState extends State<EntryForm> {
  // Widget _iframeWidget;
  final IFrameElement _iframeElement = IFrameElement();

  @override
  void initState() {
    super.initState();
    _iframeElement.src = widget.source;
    _iframeElement.style.border = 'none';

    //ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      widget.source, //use source as registered key to ensure uniqueness
      (int viewId) => _iframeElement,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Center(
      widthFactor: screenSize.width * 0.8,
      heightFactor: screenSize.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: HtmlElementView(
          key: UniqueKey(),
          viewType: widget.source,
        ),
      ),
    );
  }
}
