// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;

void downloadFile(String url, String fileName) {
  html.AnchorElement anchorElement = html.AnchorElement(href: url);
  anchorElement.download = fileName;
  anchorElement.click();
}
