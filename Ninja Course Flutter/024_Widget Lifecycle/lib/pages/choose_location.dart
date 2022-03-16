import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget 
{
	@override
	State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
	
	@override
	void initState() 
	{
		super.initState();
		print('initState Function Ran');
  	}

	@override
	Widget build(BuildContext context) 
	{
		print('build Function Ran');
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
			body: Text("Choose Location Screen"),
		);
	}
}