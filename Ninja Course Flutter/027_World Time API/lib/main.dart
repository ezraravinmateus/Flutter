import 'package:flutter/material.dart';
import 'package:world_time_api/pages/home.dart';
import 'package:world_time_api/pages/choose_location.dart';
import 'package:world_time_api/pages/loading.dart';

void main() => runApp(MaterialApp
(
	initialRoute: '/',

	routes:
	{
		'/' : (context) => Loading(),
		'/home' : (context) => Home(),
		'/location' : (context) => ChooseLocation(),
	},
));
