import'package:flutter/Material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override  
   Widget build(BuildContext context){
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Row Main Axis Alignment"),
          centerTitle:true,
          backgroundColor: const Color.fromARGB(255, 145, 224, 183),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 245, 2, 83),
               ),
                Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 247, 42, 110),
               ),
                Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 241, 103, 149),
               ),
                Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 235, 160, 185),
               ),
                
                          ],
          ),
        ),
      )
    );
   }
}