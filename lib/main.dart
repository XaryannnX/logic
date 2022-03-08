import 'package:flutter/material.dart';
import 'class.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    )); //MaterialApp

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Aryan kumar',
        text: 'is simply dummy text of the printing and typesetting industry'),
    Quote(
        author: 'XYZ jackson',
        text: 'is simply dummy text of the printing and typesetting industry'),
    Quote(
        author: 'ABC anderson',
        text: 'is simply dummy text of the printing and typesetting industry'),
  ];
  Widget quoteTemplate(quote) {
    return  QuoteCard (quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Quotes'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

 class QuoteCard extends StatelessWidget {
  final Quote quote;
 QuoteCard({ required this.quote });

 //ss

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: <Widget>[
            Text(
                '${quote.text}',
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
          ]),
        ));
  }
}
