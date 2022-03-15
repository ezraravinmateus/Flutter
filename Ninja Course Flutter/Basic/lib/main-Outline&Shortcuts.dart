import 'package:flutter/material.dart';

void main() => runApp
(
	MaterialApp
	(
		home: Home(),
	)
);

class Home extends StatelessWidget 
{
	@override
	Widget build(BuildContext context) 
	{
		return Scaffold
		(
			appBar: AppBar
			(
				title: Text("My Widget App"),
				centerTitle: true,
				backgroundColor: Colors.deepPurple[900],
			),

			body: Column
			(
				mainAxisAlignment: MainAxisAlignment.end,
				crossAxisAlignment: CrossAxisAlignment.end,
				children: <Widget>
				[
					Row
					(
						children: <Widget>
						[
							Text("Hello"),
							Text("World"),
						],
					),
					Container
					(
						padding: EdgeInsets.all(30),
						color: Colors.pinkAccent,
						child: Text('One'),
					),
					Container
					(
						padding: EdgeInsets.all(40),
						color: Colors.amber,
						child: Text('One'),
					),
					Container
					(
						padding: EdgeInsets.all(20),
						color: Colors.cyan,
						child: Text('One'),
					),
				],
			),

			floatingActionButton: FloatingActionButton
			(
				onPressed: () {  },
				child: Text("Click"),
				backgroundColor: Colors.red[600],
			),
		);
	}
}