import 'package:flutter/material.dart';
import 'package:list_view_builder/pages/home.dart';
import 'package:list_view_builder/pages/choose_location.dart';
import 'package:list_view_builder/pages/loading.dart';


void main() => runApp(MaterialApp
(
	debugShowCheckedModeBanner: false,
	initialRoute: '/',

	routes:
	{
		'/' : (context) => Loading(),
		'/home' : (context) => Home(),
		'/location' : (context) => ChooseLocation(),
	},
));
