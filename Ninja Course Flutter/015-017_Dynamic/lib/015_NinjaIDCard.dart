import 'package:flutter/material.dart';

void main() => runApp(MaterialApp
(
	home: NinjaCard(),
));

class NinjaCard extends StatelessWidget 
{
 	@override
	Widget build(BuildContext context) 
	{
		return Scaffold
		(
			backgroundColor: Colors.grey[900],
			appBar: AppBar
			(
				title: Text('Ninja ID Card'),
				centerTitle: true,
				backgroundColor: Colors.grey[850],
				elevation: 0.0,
			),
			body: Padding
			(
				padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
				child: Column
				(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>
					[
						Center(
							child: CircleAvatar
							(
								backgroundImage: AssetImage('assets/thumb.jpg'),
								radius: 40,
							),
						),
						Divider
						(
							height: 90,
							color: Colors.grey[800],
						),
						Text
						(
							"NAME",
							style: TextStyle
							(
								color: Colors.grey,
								letterSpacing: 2,
							),
						),
						SizedBox(height: 10,),
						Text
						(
							"Chun-Li",
							style: TextStyle
							(
								color: Colors.amberAccent[200],
								fontSize: 28,
								fontWeight: FontWeight.bold,
								letterSpacing: 2,
							),
						),
						SizedBox(height: 30,),

						Text
						(
							"CURRENT NINJA LEVEL",
							style: TextStyle
							(
								color: Colors.grey,
								letterSpacing: 2,
							),
						),
						SizedBox(height: 10,),
						Text
						(
							"8",
							style: TextStyle
							(
								color: Colors.amberAccent[200],
								fontSize: 28,
								fontWeight: FontWeight.bold,
								letterSpacing: 2,
							),
						),
						SizedBox(height: 30,),
						Row
						(
							children: <Widget>
							[
								Icon
								(
									Icons.email, 
									color: Colors.grey[400],
								),
								SizedBox(width: 10),
								Text
								(
									"chun.li@thenetninja.co.uk",
									style: TextStyle
									(
										color: Colors.grey[400],
										fontSize: 18,
										letterSpacing: 1.0
									),
								)
							],
						)
					],
				),
			),
		);
	}
}