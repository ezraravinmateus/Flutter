import 'package:flutter/material.dart';
import 'package:async_code/pages/home.dart';
import 'package:async_code/pages/choose_location.dart';
import 'package:async_code/pages/loading.dart';
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
