import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime
{
	String location; // location name for UI
	String time = ""; // the time in that location
	String flagURL; // URL to Asset Flag Icon
	String url; // This is location URL for API end point
	bool isDaytime = false; // True or false if daytime or not

	WorldTime({required this.location, required this.flagURL, required this.url});
	
	Future<void> getTime() async
	{

		try
		{
			// Make request
			Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
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

			// Set time property
			isDaytime = now.hour > 7 && now.hour < 18;
			time = DateFormat.jm().format(now);
		}

		catch (e)
		{
			print("Caught error : $e");
		}
		
	}
}
