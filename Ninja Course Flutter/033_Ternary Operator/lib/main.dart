import 'package:flutter/material.dart';
import 'package:ternary_operator/pages/home.dart';
import 'package:ternary_operator/pages/choose_location.dart';
import 'package:ternary_operator/pages/loading.dart';


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
