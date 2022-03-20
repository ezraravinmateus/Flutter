import 'package:flutter/material.dart';
import 'package:list_view_builder/pages/loading.dart';
import 'package:list_view_builder/services/world_time.dart';

class ChooseLocation extends StatefulWidget 
{
	@override
	State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> 
{

	List<WorldTime> locations = 
	[
		WorldTime(url: 'Europe/London', location: 'London', flagURL: 'uk.png'),
		WorldTime(url: 'Europe/Berlin', location: 'Athens', flagURL: 'greece.png'),
		WorldTime(url: 'Africa/Cairo', location: 'Cairo', flagURL: 'egypt.png'),
		WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flagURL: 'kenya.png'),
		WorldTime(url: 'America/Chicago', location: 'Chicago', flagURL: 'usa.png'),
		WorldTime(url: 'America/New_York', location: 'New York', flagURL: 'usa.png'),
		WorldTime(url: 'Asia/Seoul', location: 'Seoul', flagURL: 'south_korea.png'),
		WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flagURL: 'indonesia.png'),
	];

	void updateTime(index) async 
	{
		worldTime
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
			body: ListView.builder
			(
				itemCount : locations.length,
				itemBuilder: (context, index)
				{
					return Card
					(
						child: ListTile
						(
							onTap: ()
							{
								print(locations[index].location);
							},
							title: Text(locations[index].location),
							leading: CircleAvatar
							(
								backgroundImage: AssetImage
								(
									'assets/${locations[index].flagURL}'
								),
							),
						),
					);
				},

			),
		);
	}
}