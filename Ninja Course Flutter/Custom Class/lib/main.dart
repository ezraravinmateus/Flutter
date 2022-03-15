import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp
(
	debugShowCheckedModeBanner: false,
	home: QuoteList(),
));

class QuoteList extends StatefulWidget 
{
	@override
	State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> 
{
	List<Quote> quotes = 
	[
		Quote(author: "Oscar Wilde", text: "Be yourself; everyone else is already taken"),
		Quote(author: "Albert Einstein", text: "I have nothing to declare except my genius"),
		Quote(author: "Oscar Wilde", text: "Be yourself; everyone else is already taken")
	];

	

	@override
	Widget build(BuildContext context) 
	{
		return Scaffold
		(
			
			backgroundColor: Colors.grey[200],
			appBar: AppBar
			(
				title: Text("Awesome Quotes"),
				centerTitle: true,
				backgroundColor: Colors.redAccent,
			),
			body: Column
			(
				children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
			),
		);
	}
}