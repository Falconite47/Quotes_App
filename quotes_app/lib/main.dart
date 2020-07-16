import 'package:flutter/material.dart';
import 'package:quotes_app/quote.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State < QuoteList > {
  List < Quote > quotes = [
    Quote(
      authorName: 'Oscard Wilde',
      quotesText: 'Be yourself; everyone else is already taken',
    ),
    Quote(
      authorName: 'Oscar Wilde',
      quotesText: 'I have nothing to declare except my ingenious act',
    ),
    Quote(
      authorName: 'Oscar Wilde',
      quotesText: 'The truth is rarely pure and never simple',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(47.0),
        child: AppBar(
          elevation: 2,
          title: Text("Motivational Quotes"),
          centerTitle: true,
          backgroundColor: Colors.red[700],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
        child: ListView(
          children: quotes.map((quote) {
            return new Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                color: Colors.grey[850],
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                    new Text(quote.quotesText, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                    SizedBox(height: 7),
                    new Text(
                      "- ${quote.authorName}",
                      style: TextStyle(
                        color: Colors.grey[500], 
                        fontSize: 12,
                      ),
                    ),
              ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}