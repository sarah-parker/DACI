// import 'dart:html';
// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';

// class TotrEntry extends StatefulWidget {
//   TotrEntry({Key? key}) : super(key: key);

//   @override
//   State<TotrEntry> createState() => _TotrEntryState();
// }

// class _TotrEntryState extends State<TotrEntry> {
//   @override
//   void initState() {
//     final IFrameElement iframeElement = IFrameElement();
//     // iframeElement.height = (widget.screenSize.height * 0.9).toString();
//     // iframeElement.width = (widget.screenSize.width * 0.8).toString();
//     iframeElement.src = 'https://www.cognitoforms.com/f/4WNFz3iZ20isTwHw4lSfDQ/3';
//     iframeElement.style.border = 'none';

//     // ignore: undefined_prefixed_name
//     ui.platformViewRegistry.registerViewFactory(
//       'iframeElement',
//       (int viewId) => iframeElement,
//     );

//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   Widget iframeWidget = HtmlElementView(
//     key: UniqueKey(),
//     viewType: 'iframeElement',
//   );

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;

//     return Center(
//         widthFactor: screenSize.width * 0.8,
//         heightFactor: screenSize.height * 0.9,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: iframeWidget,
//         ));
//   }
// }
