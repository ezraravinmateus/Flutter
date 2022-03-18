import 'package:flutter/material.dart';
import 'package:format_and_show_date/pages/home.dart';
import 'package:format_and_show_date/pages/choose_location.dart';
import 'package:format_and_show_date/pages/loading.dart';


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
