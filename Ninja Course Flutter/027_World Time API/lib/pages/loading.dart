import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget 
{
  const Loading({ Key? key }) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> 
{
	void getTime() async
	{
		// Make request
		Response response = await get(Uri.http('http://worldtimeapi.org', '/api/timezone/Europe/London'));
		Map data = jsonDecode(response.body);
		print(data);
	}

	int counter = 0;
	@override
	void initState() 
	{
		super.initState();
		getTime();
	}

	@override
	Widget build(BuildContext context) 
	{
		return Scaffold
		(
			body: Text("Loading Screen"),
		);
	}
}