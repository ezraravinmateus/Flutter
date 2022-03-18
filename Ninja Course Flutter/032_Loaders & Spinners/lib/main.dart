import 'package:flutter/material.dart';
import 'package:loaders_and_spinners/pages/home.dart';
import 'package:loaders_and_spinners/pages/choose_location.dart';
import 'package:loaders_and_spinners/pages/loading.dart';


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
