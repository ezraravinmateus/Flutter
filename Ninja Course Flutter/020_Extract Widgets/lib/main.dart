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

	Widget quoteTemplate(quote)
	{
		return new QuoteCard(quote : quote);
	}

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
				crossAxisAlignment: CrossAxisAlignment.start,
				children: quotes.map((quote) => quoteTemplate(quote)).toList(),
			),
		);
	}
}

class QuoteCard extends StatelessWidget 
{

	final Quote quote;
	QuoteCard({required this.quote});

	@override
	Widget build(BuildContext context) {
		return Card
		(
			margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
			child: Padding(
			padding: const EdgeInsets.all(12.0),
			child: Column
			(
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: <Widget>
				[
					Text
					(
						quote.text,
						style: TextStyle
						(
							fontSize: 16,
							color: Colors.grey[600],
						),
					),
					SizedBox(height: 6,),
					Text
					(
						quote.author,
						style: TextStyle
						(
							fontSize: 12,
							color: Colors.grey[600],
						),
					)
				],
			),
			)
		);
	}
}