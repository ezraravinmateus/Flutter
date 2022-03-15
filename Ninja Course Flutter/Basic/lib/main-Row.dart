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

			body: Row 
			(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				crossAxisAlignment: CrossAxisAlignment.start,

				// mainAxisAlignment: MainAxisAlignment.spaceAround,
				// mainAxisAlignment: MainAxisAlignment.center,
				// crossAxisAlignment: CrossAxisAlignment.end,
				// crossAxisAlignment: CrossAxisAlignment.start,

				children: <Widget>
				[
					Text("Hello World"),
					FlatButton
					(
						onPressed: (){}, 
						color: Colors.amber,
						child: Text("Click Me"),
					),
					Container
					(
						color: Colors.cyan,
						padding: EdgeInsets.all(30),
						child: Text("Inside Container"),
					)
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