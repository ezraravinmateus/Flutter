import 'package:flutter/material.dart';
import 'package:worldtime_custom_class/pages/home.dart';
import 'package:worldtime_custom_class/pages/choose_location.dart';
import 'package:worldtime_custom_class/pages/loading.dart';

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
