import 'package:flutter/material.dart';
import 'package:loader_spinner/pages/home.dart';
import 'package:loader_spinner/pages/choose_location.dart';
import 'package:loader_spinner/pages/loading.dart';


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
