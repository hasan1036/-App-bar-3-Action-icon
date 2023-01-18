import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show SnackBar"),



        leading: ElevatedButton(onPressed: (){
          final searchBar = SnackBar(content: Text("I am Phone"));
          ScaffoldMessenger.of(context).showSnackBar(searchBar);
        }, child: Icon(Icons.phone),),



        actions: [
          ElevatedButton(onPressed: (){
            final alarmBar = SnackBar(content: Text("I am Alarm"));
            ScaffoldMessenger.of(context).showSnackBar(alarmBar);
          }, child: Icon(Icons.access_alarm),),
          ElevatedButton(onPressed: (){
            final phoneBar = SnackBar(content: Text("I am Search"));
            ScaffoldMessenger.of(context).showSnackBar(phoneBar);

          }, child: Icon(Icons.search))

        ],
      ),

      body:Center(
        child: ElevatedButton(onPressed: (){
          final snackBar = SnackBar(content: Text("I love Flutter"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

        }, child: Text("Hello")),
      ) ,
    );
  }
}
