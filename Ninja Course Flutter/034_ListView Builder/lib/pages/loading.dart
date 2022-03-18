import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:list_view_builder/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget 
{
  const Loading({ Key? key }) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> 
{
	String time = 'loading';

	void setupWorldTime() async
	{
		WorldTime instance = WorldTime(location: 'Jakarta', flagURL: 'jakarta.png', url: 'Asia/Jakarta');
		await instance.getTime();
		Navigator.pushReplacementNamed(context, '/home', arguments: 
		{
			'location': instance.location,
			'flag': instance.flagURL,
			'time': instance.time,
			'isDaytime' : instance.isDaytime
		}); 
	}

	int counter = 0;
	@override
	void initState() 
	{
		super.initState();
		setupWorldTime();
	}

	@override
	Widget build(BuildContext context) 
	{
		return Scaffold
		(
			backgroundColor: Colors.blue[900],
			body: Center
			(
				child: SpinKitRing
				(
					color: Colors.white,
					size: 50,
				),
			)
		);
	}
}