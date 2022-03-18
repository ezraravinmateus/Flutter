import 'package:flutter/material.dart';
import 'package:passing_route_data/pages/home.dart';
import 'package:passing_route_data/pages/choose_location.dart';
import 'package:passing_route_data/pages/loading.dart';

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
