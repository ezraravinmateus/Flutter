import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:worldtime_custom_class/services/world_time.dart';

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
		print(instance.time);

		setState(() 
		{
			time = instance.time;
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
			body: Padding
			(
				padding: EdgeInsets.all(50),
				child: Text(time),
			)
		);
	}
}