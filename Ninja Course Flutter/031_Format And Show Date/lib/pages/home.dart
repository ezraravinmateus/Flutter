import 'package:flutter/material.dart';

class Home extends StatefulWidget 
{

	@override
	State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> 
{

	Map data = {};
	
  	@override
	Widget build(BuildContext context) 
	{

		data = ModalRoute.of(context)!.settings.arguments as Map;
		print(data);

		return Scaffold
		(
			body: Padding
			(
				padding: const EdgeInsets.fromLTRB(0,120,0,0),
				child: SafeArea
				(
					child: Column
					(
						children: <Widget>
						[
							FlatButton.icon
							(
								onPressed: ()
								{
									Navigator.pushNamed(context, '/location');
								},
								icon: Icon(Icons.edit_location),
								label: Text("Edit Location"),
							),
							SizedBox(height: 20,),
							Row
							(
								mainAxisAlignment: MainAxisAlignment.center,
								children: <Widget>
								[
									Text
									(
										data['location'],
										style: TextStyle
										(
											letterSpacing: 2,
											fontSize: 28
										),
									)
								],
							),
							SizedBox(height: 20,),
							Text
							(
								data['time'],
								style: TextStyle
								(
									fontSize: 66,
								),
							)
						],
					)
				),
			),	
		);
	}
}