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
				// child: Image.asset('assets/minimal-1.jpg')
				child: Image.network('https://images.unsplash.com/photo-1487260211189-670c54da558d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80')
				// (
				// 	// image: NetworkImage('https://images.unsplash.com/photo-1487260211189-670c54da558d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80'),
				// 	image: AssetImage('assets/minimal-2.jpg')
				// ),
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