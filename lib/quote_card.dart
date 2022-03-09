import 'package:flutter/material.dart';
import 'class.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});
  //ss
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: <Widget>[
            Text('${quote.text}',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                )),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '${quote.author}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            // ignore: deprecated_member_use
            FlatButton.icon(
              onPressed: () {
                delete;
              },
              label: Text('delete  quote'),
              icon: Icon(Icons.delete),
            )
          ]),
        ));
  }
}
