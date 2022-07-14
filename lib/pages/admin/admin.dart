// import 'dart:convert';

// import 'package:daci/models/showClass.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:open_file/open_file.dart';
// import 'package:drift/drift.dart';

// class Admin extends StatefulWidget {
//   const Admin({Key? key}) : super(key: key);

//   @override
//   State<Admin> createState() => _AdminState();
// }

// class _AdminState extends State<Admin> {
//   final List<String> allowedExtensions = ['csv'];
//   String? fileName;
//   PlatformFile? pickedFile;
//   bool isLoading = false;
//   final bool _multiPick = false;
//   List<String> lines = [];
//   List<ShowClass> classes = [];

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;

//     void _resetState() {
//       if (!mounted) {
//         return;
//       }
//       setState(() {
//         isLoading = true;
//         fileName = null;
//         pickedFile = null;
//       });
//     }

//     void _logException(String message) {
//       print(message);
//     }

//     void _extractClasses(PlatformFile file) async {
//       String fileContent = utf8.decode(file.bytes!);
//       LineSplitter ls = const LineSplitter();
//       lines.addAll(ls.convert(fileContent));
//       lines.removeWhere((item) => item.contains(RegExp(r'([cC]ost)$')));
//       lines.forEach((element) async {
//         var line = element.split(',');
//         var convertedCost = double.tryParse(line[1]);
//         var localClass = ShowClass(name: line[0], cost: convertedCost!);
//         classes.add(localClass);
//         await insertClass(localClass);
//       });
//     }

//     void _pickFiles() async {
//       _resetState();
//       try {
//         pickedFile = (await FilePicker.platform.pickFiles(
//           type: FileType.custom,
//           allowMultiple: _multiPick,
//           allowedExtensions: allowedExtensions,
//         ))
//             ?.files
//             .first;
//         _extractClasses(pickedFile!);
//       } on PlatformException catch (e) {
//         _logException('Unsupported operation ${e.toString()}');
//       } catch (e) {
//         _logException(e.toString());
//       }
//     }

//     return SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             vertical: 15, horizontal: screenSize.width * 0.1),
//         child: Column(
//           children: [
//             ElevatedButton(
//                 onPressed: () => _pickFiles(), child: const Text('Upload CSV')),
//             const Padding(padding: const EdgeInsets.all(12)),
//             fileName != null ? Text(fileName!) : Container()
//           ],
//         ),
//       ),
//     );
//   }
// }
