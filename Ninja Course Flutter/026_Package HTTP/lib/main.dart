import 'package:flutter/material.dart';
import 'package:package_http/pages/home.dart';
import 'package:package_http/pages/choose_location.dart';
import 'package:package_http/pages/loading.dart';
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
