import 'package:flutter/material.dart';
import 'package:loaders_and_spinners/pages/loading.dart';
class ChooseLocation extends StatefulWidget 
{
	@override
	State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> 
{

	

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
					
				},
			),
		);
	}
}