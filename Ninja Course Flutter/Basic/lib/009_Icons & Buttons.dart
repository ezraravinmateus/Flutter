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
				child: 
				IconButton
				(
					onPressed: ()
					{
						print("you Clicked Me");
					},
					icon: Icon(Icons.alternate_email),
					color: Colors.amber
				)

				// RaisedButton.icon
				// (
				// 	onPressed: (){},
				// 	icon: Icon
				// 	(
				// 		Icons.mail
				// 	),
				// 	label: Text('Mail Me'),
				// 	color: Colors.amber
				// ),

				// FlatButton
				// (
				// 	onPressed: ()
				// 	{
				// 		print('You Clicked Me!');
				// 	},
				// 	child: Text('Click Me'),
				// 	color: Colors.lightBlue,
					
				// )
				// Icon 
				// (
				// 	Icons.airport_shuttle,
				// 	color: Colors.lightBlue,
				// 	size: 50,
				// )
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