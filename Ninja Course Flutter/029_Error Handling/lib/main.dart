import 'package:flutter/material.dart';
import 'package:error_handling/pages/home.dart';
import 'package:error_handling/pages/choose_location.dart';
import 'package:error_handling/pages/loading.dart';

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
