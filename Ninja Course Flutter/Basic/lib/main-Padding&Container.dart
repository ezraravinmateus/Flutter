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

			// body: Container
			// (
			// 	// padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
			// 	// padding: EdgeInsets.all(40),
			// 	padding: EdgeInsets.fromLTRB(20, 10, 40, 30),
			// 	margin: EdgeInsets.all(30),
			// 	color: Colors.grey[500],
			// 	child: Text("Hello"),
			// ),

			body: Padding
			(
				padding: EdgeInsets.all(30),
				child: Text("Hello")
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