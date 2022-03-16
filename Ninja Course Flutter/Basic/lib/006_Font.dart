import 'package:flutter/material.dart';
void main() => runApp
(
	MaterialApp
	(
		title: 'Custom Fonts',
		// Set Raleway as the default app font.
		theme: ThemeData(fontFamily: 'IndieFlower'),
		home: Scaffold
	(
		appBar: AppBar
		(
			title: Text("My First App"),
			centerTitle: true,
			backgroundColor: Colors.deepPurple[900],
		),
	),
	)
);


