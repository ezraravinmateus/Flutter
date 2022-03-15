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
			body: Center
			(
				child: Text
				(
					"Hello Nin",
					style: TextStyle
					(
						fontSize: 20,
						letterSpacing: 2.0,
						color: Colors.grey[900],
						fontFamily: 'IndieFlower',
					),
				),
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