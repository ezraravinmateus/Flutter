import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Loading extends StatefulWidget 
{
  const Loading({ Key? key }) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> 
{
	void getData() async
	{
		Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
		print(response.body);
	}

	int counter = 0;
	@override
	void initState() 
	{
		super.initState();
		getData();
		print("Hey there");
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