// import 'dart:html';

// import 'package:daci/theme/theme_constants.dart';
// import 'package:daci/widgets/button_data.dart';
// import 'package:daci/widgets/floating_quick_access_bar.dart';
// import 'package:daci/widgets/image_slider.dart';
// import 'package:daci/widgets/web_scrollbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// // import 'package:social_embed_webview/platforms/facebook-post.dart';
// import 'package:vrouter/vrouter.dart';
// // import 'package:webview_flutter/webview_flutter.dart';
// // import 'package:social_embed_webview/social_embed_webview.dart';
// import 'dart:ui' as ui;

// class Shows extends StatefulWidget {
//   const Shows({Key? key}) : super(key: key);

//   @override
//   State<Shows> createState() => _ShowsState();
// }

// class _ShowsState extends State<Shows> {
//   late ScrollController _scrollController;
//   double _scrollPosition = 0;
//   double _opacity = 0;

//   _scrollListener() {
//     setState(() {
//       _scrollPosition = _scrollController.position.pixels;
//     });
//   }

//   @override
//   void initState() {
//     _scrollController = ScrollController();
//     _scrollController.addListener(_scrollListener);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     _opacity = _scrollPosition < screenSize.height * 0.40
//         ? _scrollPosition / (screenSize.height * 0.40)
//         : 1;
//     String html =
//         """<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fdownsarabclub%2F&tabs=timeline&width=400&height=1000&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=false&appId" width="400" height="1000" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>""";

//     return WebScrollbar(
//       // backgroundColor: Colors.blueGrey.withOpacity(0.3),
//       width: 10,
//       heightFraction: 0.3,
//       controller: _scrollController,
//       child: SingleChildScrollView(
//         controller: _scrollController,
//         physics: const ClampingScrollPhysics(),
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 SizedBox(
//                     height: screenSize.height * 0.55,
//                     width: screenSize.width,
//                     child: ImageSlider(
//                       height: screenSize.height * 0.55,
//                       width: screenSize.width,
//                     )),
//                 Column(
//                   children: [
//                         // ButtonData(
//                         //     label: 'Home',
//                         //     goToRoute: () {
//                         //       context.vRouter.to('/home');
//                         //     }),
//                         // ButtonData(
//                         //     label: 'Committee',
//                         //     goToRoute: () {
//                         //       context.vRouter.to('/committee');
//                         //     }),
//                         // ButtonData(
//                         //     label: 'Schedules',
//                         //     goToRoute: () {
//                         //       context.vRouter.to('/committee');
//                         //     }),
//                         // ButtonData(
//                         //     label: 'Shows',
//                         //     goToRoute: () {
//                         //       context.vRouter.to('/committee');
//                         //     }),
//                         // ButtonData(
//                         //     label: 'Results',
//                         //     goToRoute: () {
//                         //       context.vRouter.to('/committee');
//                         //     }),
//                     // Container(
//                     //     padding: const EdgeInsets.all(30),
//                     //     child: Row(
//                     //       children: [
//                     //         Column(
//                     //           children: [
//                     //             Padding(
//                     //               padding: const EdgeInsets.all(8.0),
//                     //               child: const SelectableText(
//                     //                   'The Downs Arabian Club Inc. is dedicated to promoting and supporting the Arabian horse in the Darling Downs region.  The club regularly holds shows, events, clinics and seminars to educate and promote the beautiful Arabian horse. \n\n' +
//                     //                       'The Downs Arabian Club Inc. was founded in 1979 as ‘The Darling Downs Arabian Promotion Group’, and its aim was to draw together Arabian enthusiasts from the Darling Downs for educational, promotional and social activities. The Club’s membership today also sees a broad cross section of people with interest not only in showing their horse, but also endurance, pony club, harness and dressage enthusiasts.Downs Arabians have long been a major influence on Arabian breeding in Australia, providing many champions at major State and National shows.\n\n' +
//                     //                       'The Club’s founding members included Ken and Coralie Gordon (The Cameo Stud), Tom and Marion Sharman (Jangharm Arabians), RM and Erica Williams (Rockybar and Wealdbarns), John and Judy Hasted (Istana Stud), Martin and Judy Penfound (Sahala Arabians), Tubby and Sandy McKnight (Circle TS Arabians), Bob and Grace Carmichael (El-Shaloo Stud), Jim and Dell Priebe (Moorak Arabians) and Di Morris (Cotswold Hills).\n\n' +
//                     //                       'The Club changed its name to Downs Arabian Club Inc. in 1983 and was incorporated in 1986 and is now known as the Downs Arabian Club Incorporated (DACI) and many of the founding members are still involved with Club activities today. Members were drawn from far and wide, not only from the immediate Toowoomba area, but from Injune, Charleville and Longreach in the west to Inglewood in the south and Cooyar in the north. This broad catchment is still reflected in our membership today.\n\n'),
//                     //             ),
//                     //           ],
//                     //         ),
//                     //         ConstrainedBox(
//                     //             constraints: BoxConstraints(
//                     //                 maxWidth: 400, maxHeight: 600),
//                     //             child:
//                     //                 Html(data: html))
//                     //       ],
//                     //     ))
//                   ],
//                 )
//               ],
//             ),
//             Container(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: SelectableText(
//                               'The Downs Arabian Club Inc. is dedicated to promoting and supporting the Arabian horse in the Darling Downs region.  The club regularly holds shows, events, clinics and seminars to educate and promote the beautiful Arabian horse. \n\n' +
//                                   'The Downs Arabian Club Inc. was founded in 1979 as ‘The Darling Downs Arabian Promotion Group’, and its aim was to draw together Arabian enthusiasts from the Darling Downs for educational, promotional and social activities. The Club’s membership today also sees a broad cross section of people with interest not only in showing their horse, but also endurance, pony club, harness and dressage enthusiasts.Downs Arabians have long been a major influence on Arabian breeding in Australia, providing many champions at major State and National shows.\n\n' +
//                                   'The Club’s founding members included Ken and Coralie Gordon (The Cameo Stud), Tom and Marion Sharman (Jangharm Arabians), RM and Erica Williams (Rockybar and Wealdbarns), John and Judy Hasted (Istana Stud), Martin and Judy Penfound (Sahala Arabians), Tubby and Sandy McKnight (Circle TS Arabians), Bob and Grace Carmichael (El-Shaloo Stud), Jim and Dell Priebe (Moorak Arabians) and Di Morris (Cotswold Hills).\n\n' +
//                                   'The Club changed its name to Downs Arabian Club Inc. in 1983 and was incorporated in 1986 and is now known as the Downs Arabian Club Incorporated (DACI) and many of the founding members are still involved with Club activities today. Members were drawn from far and wide, not only from the immediate Toowoomba area, but from Injune, Charleville and Longreach in the west to Inglewood in the south and Cooyar in the north. This broad catchment is still reflected in our membership today.\n\n',
//                               textAlign: TextAlign.justify,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                         height: screenSize.height,
//                         width: screenSize.width * 0.3,
//                         child:
//                             Container(color: daciblue, child: Html(data: html)))
//                   ],
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
