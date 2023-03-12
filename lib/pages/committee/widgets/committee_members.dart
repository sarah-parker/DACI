import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class CommitteeMembers extends StatelessWidget {
  const CommitteeMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(width: 0.5),
      children: [
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text('President',
                      style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ),
                TextRenderer(
                  child: Text('Richard Sharman\n0408 668 326', textAlign: TextAlign.center),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text('Vice President',
                      style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ),
                Text('Sarah Parker\n0401 883 954', textAlign: TextAlign.center)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text('Secretary',
                      style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ),
                Text('Ashleigh McClelland\n0406 242 310', textAlign: TextAlign.center)
              ],
            ),
          )
        ]),
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text('Assistant Secretary',
                      style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ),
                Text('Lee-Ann McClelland\n', textAlign: TextAlign.center)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text('Treasurer',
                      style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ),
                Text('Greg Keyes\n')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text('Publicity Officer',
                      style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ),
                Text('Vacant\n', textAlign: TextAlign.center)
              ],
            ),
          ),
        ]),
        TableRow(children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text('Committee Members',
                    style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
              ),
              Text('Hollie Webster\nStacey Sharman\n')
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text('Life Members',
                      style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ),
                Text('Marion Sharman\nTom Sharman\nCoralie Gordon', textAlign: TextAlign.center)
              ],
            ),
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text('Patron',
                    style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
              ),
              Text('Coralee Gordon\n', textAlign: TextAlign.center)
            ],
          ),
        ]),
      ],
    );
  }
}
