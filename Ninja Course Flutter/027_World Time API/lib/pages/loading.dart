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
		Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Jakarta'));
		Map data = jsonDecode(response.body);
		// print(data);

		// Get Properties from data
		String datetime = data['datetime'];
		String offset = data['utc_offset'].substring(1,3);
		int iOffset = int.parse(offset);

		// print(datetime);
		// print(offset);

		// Create DateTime Object

		DateTime now = DateTime.parse(datetime);
		now = now.add(Duration(hours : iOffset));
		print(now);

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