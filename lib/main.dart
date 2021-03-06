import 'package:flutter/material.dart';
import 'class.dart';
import 'quote_card.dart';

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
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
