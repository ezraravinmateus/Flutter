import 'package:flutter/material.dart';
import 'package:widget_lifecycle/pages/home.dart';
import 'package:widget_lifecycle/pages/choose_location.dart';
import 'package:widget_lifecycle/pages/loading.dart';



void main() => runApp(MaterialApp
(
	initialRoute: '/home',

	routes:
	{
		'/' : (context) => Loading(),
		'/home' : (context) => Home(),
		'/location' : (context) => ChooseLocation(),
	},
));
