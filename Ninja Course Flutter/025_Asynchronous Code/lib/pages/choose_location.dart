import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget 
{
	@override
	State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> 
{

	void getData() async
	{
		// Simulate network request for username
		String username = await Future.delayed(Duration(seconds: 3), ()
		{
			return "Yoshi";
		});

		// Simulate network request to get Bio of username
		await Future.delayed(Duration(seconds: 2), ()
		{
			print("Vega, musician & egg collector");
		});

		print("Statement");
	}

	int counter = 0;
	@override
	void initState() 
	{
		super.initState();
		getData();
	}

	@override
	Widget build(BuildContext context) 
	{
		return Scaffold
		(
			backgroundColor: Colors.grey[200],
			appBar: AppBar
			(
				backgroundColor: Colors.blue[900],
				title: Text("Choose a Location"),
				centerTitle: true,
				elevation: 0,
			),
			body: RaisedButton
			(
				onPressed: ()
				{
					setState(()
					{
					  	counter += 1;
					});
				},
				child: Text("Counter is $counter"),
			),
		);
	}
}